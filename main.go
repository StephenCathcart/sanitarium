package main

import (
	"log"
	"net/http"

	"bitbucket.org/stephen_cathcart/sanitarium/config"
	"bitbucket.org/stephen_cathcart/sanitarium/middleware"
	"bitbucket.org/stephen_cathcart/sanitarium/routing"
	"bitbucket.org/stephen_cathcart/sanitarium/storage"
)

func main() {
	// Start the database
	storage.DB = storage.NewRepository()
	storage.DB.Initialise()
	defer storage.DB.Close()
	// Create rate limiter middleware
	rateLimiter := middleware.RateLimiter()
	// Start the API server
	http.Handle(config.GetAPIHost()+"/killers", rateLimiter.Handler(routing.Killers()))
	http.Handle(config.GetAPIHost()+"/killers/", rateLimiter.Handler(routing.Killers()))
	http.Handle(config.GetAPIHost()+"/classifications", rateLimiter.Handler(routing.Classifications()))
	http.Handle(config.GetAPIHost()+"/classifications/", rateLimiter.Handler(routing.Classifications()))
	// Start the File server
	http.Handle("/", routing.Home())
	// Start the TCP server
	log.Fatal(http.ListenAndServe(config.GetPort(), nil))
}
