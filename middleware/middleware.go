package middleware

import (
	"net/http"

	"github.com/ulule/limiter"
	"github.com/ulule/limiter/drivers/middleware/stdlib"
	"github.com/ulule/limiter/drivers/store/memory"
)

// API todo
func API(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.Header().Add("Content-Type", "application/json")
		w.Header().Add("Access-Control-Allow-Origin", "*")
		w.Header().Add("Access-Control-Allow-Headers", "Content-Type")
		w.Header().Add("Access-Control-Allow-Methods", "GET")
		next.ServeHTTP(w, r)
	})
}

// RateLimiter todo
func RateLimiter() *stdlib.Middleware {
	// Define a limit rate to 200 requests per hour.
	rate, _ := limiter.NewRateFromFormatted("200-H")
	// Check out NewStoreWithOptions
	store := memory.NewStore()
	// Create a new middleware with the limiter instance.
	middleware := stdlib.NewMiddleware(limiter.New(store, rate, limiter.WithTrustForwardHeader(true)))
	middleware.OnLimitReached = LimitReachedHandler()
	return middleware
}
