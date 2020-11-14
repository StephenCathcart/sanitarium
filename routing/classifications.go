package routing

import (
	"bitbucket.org/stephen_cathcart/sanitarium/api"
	"bitbucket.org/stephen_cathcart/sanitarium/middleware"
	"github.com/gorilla/mux"
)

func Classifications() *mux.Router {
	router := mux.NewRouter().StrictSlash(false)
	router.Use(middleware.API)
	registerHandleFunc(router, "/classifications", api.GetAllClassifications)
	registerErrorHandles(router)
	return router
}
