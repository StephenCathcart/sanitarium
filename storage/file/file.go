package file

import (
	"bitbucket.org/stephen_cathcart/sanitarium/middleware"
	"net/http"
	"os"
	"path"
	"strings"
)

type FileSystem struct {
	FS http.FileSystem
}

func (fs FileSystem) Open(path string) (http.File, error) {
	f, err := fs.FS.Open(path)
	if err != nil {
		return nil, err
	}

	s, err := f.Stat()
	if s.IsDir() {
		index := strings.TrimSuffix(path, "/") + "/index.html"
		if _, err := fs.FS.Open(index); err != nil {
			return nil, err
		}
	}
	return f, nil
}

func FileServer(fs http.FileSystem) http.Handler {
	fsh := http.FileServer(fs)
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		_, err := fs.Open(path.Clean(r.URL.Path))
		if os.IsNotExist(err) {
			middleware.NotFoundFunc(w, r)
			return
		}
		fsh.ServeHTTP(w, r)
	})
}
