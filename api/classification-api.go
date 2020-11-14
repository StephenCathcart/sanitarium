package api

import (
	"bitbucket.org/stephen_cathcart/sanitarium/exception"
	"bitbucket.org/stephen_cathcart/sanitarium/storage"
	"bitbucket.org/stephen_cathcart/sanitarium/storage/entity"
	"encoding/json"
	"net/http"
)

// GetAllClassifications returns all classifications
func GetAllClassifications(w http.ResponseWriter, r *http.Request) {
	classifications, err := entity.NewEntityRepository(storage.DB).GetAllClassifications()
	if err != nil {
		message, _ := json.Marshal(&exception.Error{Code: http.StatusNotFound, Message: exception.KillerNotFound})
		http.Error(w, string(message), http.StatusNotFound)
		return
	}
	json.NewEncoder(w).Encode(classifications)
}
