package transport

import (
	"context"
	"encoding/json"
	"github.com/wen-qu/kit-xuesou-backend/general/errors"

	"github.com/wen-qu/kit-xuesou-backend/user/model"
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
	return nil, nil
}

func DecodeReadProfileRequest(ctx context.Context, r *http.Request) (interface{}, error) {
	return nil, nil
}

func DecodeUpdateProfileRequest(ctx context.Context, r *http.Request) (interface{}, error) {
	return nil, nil
}



func Encode(ctx context.Context, w http.ResponseWriter, rsp interface{}) error {
	w.Header().Set("Content-Type", "application/json")
	return json.NewEncoder(w).Encode(rsp)
}