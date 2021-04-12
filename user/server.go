package main

import (
	"context"
	"github.com/wen-qu/kit-xuesou-backend/user/endpoint"
	"github.com/wen-qu/kit-xuesou-backend/user/transport"

	httptransport "github.com/go-kit/kit/transport/http"
	"github.com/gorilla/mux"
	"net/http"
)

func NewHTTPServer(ctx context.Context, endpoints endpoint.Endpoints) http.Handler {
	r := mux.NewRouter()
	r.Use(authMiddleWare)

	r.Methods("POST").Path("/api/user/login").Handler(httptransport.NewServer(
		endpoints.UidEndpoint,
		transport.DecodeUid,
		transport.Encode,
	))

	return r
}

func authMiddleWare(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		next.ServeHTTP(w, r)
	})
}