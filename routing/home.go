package routing

import (
	"bitbucket.org/stephen_cathcart/sanitarium/storage/file"
	"github.com/gorilla/mux"
	"net/http"
)

func Home() *mux.Router {
	router := mux.NewRouter()
	fs := file.FileSystem{FS: http.Dir("./static/")}
	router.PathPrefix("/").Handler(file.FileServer(fs))
	return router
}
