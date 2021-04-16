package transport

import (
	"context"
	"encoding/json"
	"github.com/wen-qu/kit-xuesou-backend/agency/model"
	"github.com/wen-qu/kit-xuesou-backend/agency/util"
	"github.com/wen-qu/kit-xuesou-backend/general/errors"
	"net/http"
)

func DecodeLoginRequest(ctx context.Context, r *http.Request) (interface{}, error) {
	var req model.LoginRequest
	err := json.NewDecoder(r.Body).Decode(&req)
	if err != nil {
		return nil, errors.BadRequest("para:001", "missing or invalid parameters")
	}
	return req, nil
}

func DecodeRegisterRequest(ctx context.Context, r *http.Request) (interface{}, error) {
	var req model.RegisterRequest
	err := json.NewDecoder(r.Body).Decode(&req)
	if err != nil {
		return nil, errors.BadRequest("para:001", "missing or invalid parameters")
	}
	return req, nil
}

func DecodeGetNearbyAgenciesRequest(ctx context.Context, r *http.Request) (interface{}, error) {
	var req model.GetNearbyAgenciesRequest
	urlQueryString := r.URL.Query().Encode()
	if err := util.DecodeGetParameters(urlQueryString, &req); err != nil {
		return nil, errors.BadRequest("para:001", "missing or invalid parameters")
	}
	return req, nil
}

func DecodeGetEvaluationRequest(ctx context.Context, r *http.Request) (interface{}, error) {
	var req model.GetEvaluationRequest
	urlQueryString := r.URL.Query().Encode()
	if err := util.DecodeGetParameters(urlQueryString, &req); err != nil {
		return nil, errors.BadRequest("para:001", "missing or invalid parameters")
	}
	return req, nil
}

func DecodeUpdateAgencyDetailRequest(ctx context.Context, r *http.Request) (interface{}, error) {
	var req model.UpdateAgencyDetailRequest
	err := json.NewDecoder(r.Body).Decode(&req)
	if err != nil {
		return nil, errors.BadRequest("para:001", "missing or invalid parameters")
	}
	return req, nil
}

func DecodeGetAgencyDetailRequest(ctx context.Context, r *http.Request) (interface{}, error) {
	var req model.GetAgencyDetailRequest
	urlQueryString := r.URL.Query().Encode()
	if err := util.DecodeGetParameters(urlQueryString, &req); err != nil {
		return nil, errors.BadRequest("para:001", "missing or invalid parameters")
	}
	return req, nil
}

func DecodeSearchRequest(ctx context.Context, r *http.Request) (interface{}, error) {
	var req model.SearchRequest
	err := json.NewDecoder(r.Body).Decode(&req)
	if err != nil {
		return nil, errors.BadRequest("para:001", "missing or invalid parameters")
	}
	return req, nil
}

func DecodeGetAgenciesRequest(ctx context.Context, r *http.Request) (interface{}, error) {
	var req model.GetAgenciesRequest
	urlQueryString := r.URL.Query().Encode()
	if err := util.DecodeGetParameters(urlQueryString, &req); err != nil {
		return nil, errors.BadRequest("para:001", "missing or invalid parameters")
	}
	return req, nil
}

func Encode(ctx context.Context, w http.ResponseWriter, rsp interface{}) error {
	w.Header().Set("Content-Type", "application/json")
	return json.NewEncoder(w).Encode(rsp)
}