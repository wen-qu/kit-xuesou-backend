package main

import (
	"context"
	"github.com/gorilla/mux"
	"github.com/wen-qu/kit-xuesou-backend/class/endpoint"
	"net/http"
)

func NewHTTPServer(ctx context.Context, endpoints endpoint.Endpoints) http.Handler {
	r := mux.NewRouter()
	r.Use(authMiddleWare)

	_ = r.PathPrefix("/api/class").Subrouter()

	return r
}

func authMiddleWare(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		next.ServeHTTP(w, r)
	})
}
