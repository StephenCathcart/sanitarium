package api

import (
	"encoding/json"
	"net/http"
	"net/url"
	"strings"

	"bitbucket.org/stephen_cathcart/sanitarium/exception"
	"bitbucket.org/stephen_cathcart/sanitarium/request"
	"bitbucket.org/stephen_cathcart/sanitarium/storage"
	"bitbucket.org/stephen_cathcart/sanitarium/storage/entity"
	"github.com/gorilla/mux"
)

// GetKillerBySlug returns a single killer matching the slug
func GetKillerBySlug(w http.ResponseWriter, r *http.Request) {
	killer, err := entity.NewEntityRepository(storage.DB).GetKillerBySlug(getParameter(r, "slug"))
	if err != nil {
		message, _ := json.Marshal(&exception.Error{Code: http.StatusNotFound, Message: exception.KillerNotFound})
		http.Error(w, string(message), http.StatusNotFound)
		return
	}
	json.NewEncoder(w).Encode(killer)
}

// GetRandomKiller returns a random killer
func GetRandomKiller(w http.ResponseWriter, r *http.Request) {
	query := extractQuery(r.URL.Query())
	killer, err := entity.NewEntityRepository(storage.DB).GetRandomKiller(query)
	if err != nil {
		message, _ := json.Marshal(&exception.Error{Code: http.StatusNotFound, Message: err.Error()})
		http.Error(w, string(message), http.StatusNotFound)
		return
	}
	json.NewEncoder(w).Encode(killer)
}

func getParameter(r *http.Request, key string) (value string) {
	params := mux.Vars(r)
	value = params[key]
	value = strings.TrimRight(value, "/")
	return value
}

func extractQuery(values url.Values) *request.Query {
	return request.NewQuery(
		values.Get("name"),
		values.Get("weapon"),
		values.Get("classification"),
		values.Get("residence"),
	)
}
