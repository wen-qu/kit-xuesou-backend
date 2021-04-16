package main

import (
	"context"
	httptransport "github.com/go-kit/kit/transport/http"
	"github.com/gorilla/mux"
	"github.com/wen-qu/kit-xuesou-backend/agency/endpoint"
	"github.com/wen-qu/kit-xuesou-backend/agency/transport"
	"net/http"
)

func NewHTTPServer(ctx context.Context, endpoints endpoint.Endpoints) http.Handler {
	r := mux.NewRouter()
	r.Use(authMiddleWare)

	s := r.PathPrefix("/api/agency").Subrouter()

	s.Methods("POST").Path("/login").Handler(httptransport.NewServer(
		endpoints.Login,
		transport.DecodeLoginRequest,
		transport.Encode,
	))
	s.Methods("POST").Path("/register").Handler(httptransport.NewServer(
		endpoints.Register,
		transport.DecodeRegisterRequest,
		transport.Encode,
	))
	s.Methods("GET").Path("/agencies").Handler(httptransport.NewServer(
		endpoints.GetAgencies,
		transport.DecodeGetAgenciesRequest,
		transport.Encode,
	))
	s.Methods("GET").Path("/search").Handler(httptransport.NewServer(
		endpoints.Search,
		transport.DecodeSearchRequest,
		transport.Encode,
	))
	s.Methods("GET").Path("/agencyDetail").Handler(httptransport.NewServer(
		endpoints.GetAgencyDetail,
		transport.DecodeGetAgencyDetailRequest,
		transport.Encode,
	))
	s.Methods("PUT").Path("/agencyProfile").Handler(httptransport.NewServer(
		endpoints.UpdateAgencyDetail,
		transport.DecodeUpdateAgencyDetailRequest,
		transport.Encode,
	))
	s.Methods("GET").Path("/evaluation").Handler(httptransport.NewServer(
		endpoints.GetEvaluation,
		transport.DecodeGetEvaluationRequest,
		transport.Encode,
	))
	s.Methods("GET").Path("/nearbyAgencies").Handler(httptransport.NewServer(
		endpoints.GetNearbyAgencies,
		transport.DecodeGetNearbyAgenciesRequest,
		transport.Encode,
	))
	return r
}

func authMiddleWare(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		next.ServeHTTP(w, r)
	})
}