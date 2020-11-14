package middleware

import (
	"encoding/json"
	"net/http"

	"bitbucket.org/stephen_cathcart/sanitarium/exception"
	"github.com/ulule/limiter/drivers/middleware/stdlib"
)

// NotFoundHandler todo
func NotFoundHandler() http.Handler {
	return http.HandlerFunc(NotFoundFunc)
}

// NotFoundFunc todo
func NotFoundFunc(w http.ResponseWriter, r *http.Request) {
	message, _ := json.Marshal(&exception.Error{
		Code:    http.StatusNotFound,
		Message: "'No tears, please. It's a waste of good suffering.' Pinhead. Hellraiser, 1987",
	})
	http.Error(w, string(message), http.StatusNotFound)
}

// NotAllowedHandler todo
func NotAllowedHandler() http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		message, _ := json.Marshal(&exception.Error{
			Code:    http.StatusMethodNotAllowed,
			Message: "'We all go a little mad sometimes.' Norman Bates. Psycho, 1960",
		})
		http.Error(w, string(message), http.StatusMethodNotAllowed)
	})
}

// LimitReachedHandler todo
func LimitReachedHandler() stdlib.LimitReachedHandler {
	return stdlib.LimitReachedHandler(func(w http.ResponseWriter, r *http.Request) {
		message, _ := json.Marshal(&exception.Error{
			Code:    http.StatusTooManyRequests,
			Message: "'Time to float.' Pennywise. IT, 2017",
		})
		http.Error(w, string(message), http.StatusTooManyRequests)
	})
}
