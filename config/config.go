package config

import (
	"log"
	"os"
)

// GetAPIHost todo
func GetAPIHost() string {
	if os.Getenv("ENV") == "DEV" {
		return "api.lvh.me"
	}
	return "api.sanitarium.io"
}

// GetPort todo
func GetPort() string {
	port := os.Getenv("PORT")
	if port == "" {
		log.Fatal("$PORT not set")
	}
	return ":" + port
}
