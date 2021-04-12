package main

import (
	"context"
	"github.com/gorilla/mux"
	"github.com/wen-qu/kit-xuesou-backend/user/endpoint"
	httptransport "github.com/go-kit/kit/transport/http"
	"github.com/wen-qu/kit-xuesou-backend/user/transport"
	"net/http"
)

func NewHTTPServer(ctx context.Context, endpoints endpoint.Endpoints) http.Handler {
	r := mux.NewRouter()
	r.Use(authMiddleWare)
	g := r.Path("/user")

	g.Methods("POST").Path("/login").Handler(httptransport.NewServer(
		endpoints.Login,
		transport.DecodeLoginRequest,
		transport.Encode,
	))
	return r
}

func authMiddleWare(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		next.ServeHTTP(w, r)
	})
}