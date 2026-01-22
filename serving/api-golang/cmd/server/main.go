package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/health", healthHandler)
	http.HandleFunc("/predict", predictHandler)

	port := ":8080"
	fmt.Printf("Starting server on port %s\n", port)
	log.Fatal(http.ListenAndServe(port, nil))
}

func healthHandler(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(http.StatusOK)
	w.Write([]byte("OK"))
}

func predictHandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	w.Write([]byte(`{"prediction": 0.85}`))
}
