package routing

import (
	"net/http"

	"bitbucket.org/stephen_cathcart/sanitarium/api"
	"bitbucket.org/stephen_cathcart/sanitarium/middleware"
	"github.com/gorilla/mux"
)

// Killers todo
func Killers() *mux.Router {
	router := mux.NewRouter().StrictSlash(false)
	router.Use(middleware.API)
	registerHandleFunc(router, "/killers/{slug:~(?:[a-z-]+)}", api.GetKillerBySlug)
	registerHandleFunc(router, "/killers/{random:random}", api.GetRandomKiller)
	registerErrorHandles(router)
	return router
}

func registerErrorHandles(router *mux.Router) {
	router.NotFoundHandler = middleware.NotFoundHandler()
	router.MethodNotAllowedHandler = middleware.NotAllowedHandler()
}

func registerHandleFunc(router *mux.Router, path string, f func(http.ResponseWriter, *http.Request)) {
	router.HandleFunc(path, f).Methods(http.MethodGet, http.MethodOptions)
	router.HandleFunc(path+"/", f).Methods(http.MethodGet, http.MethodOptions)
}
