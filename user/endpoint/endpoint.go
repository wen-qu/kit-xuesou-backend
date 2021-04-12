package endpoint

import (
	"context"
	"github.com/go-kit/kit/endpoint"
	"github.com/wen-qu/kit-xuesou-backend/general/errors"
	"github.com/wen-qu/kit-xuesou-backend/user/model"
	"github.com/wen-qu/kit-xuesou-backend/user/service"
	"regexp"
)

type Endpoints struct {
	Login endpoint.Endpoint
	Register endpoint.Endpoint
	UpdateProfile endpoint.Endpoint
	ReadProfile endpoint.Endpoint
}

func Login(userService service.IUserService) endpoint.Endpoint {
	return func(ctx context.Context, request interface{}) (interface{}, error) {
		var rsp model.LoginResponse
		req := request.(model.LoginRequest)

		if len(req.Tel) == 0 || len(req.ValidationCode) == 0 {
			return rsp, errors.BadRequest("para:001", "missing parameter")
		}
		if ok, _ := regexp.Match("^1[3-9]\\d{9}$", []byte(req.Tel)); !ok {
			return rsp, errors.BadRequest("para:002", "invalid parameter: tel")
		}
		// TODO: check validation code
		loginRsp, err := userService.InspectUser(model.InspectRequest{
			Tel:      req.Tel,
		})

		if err != nil {
			return rsp, err
		}
		if len(loginRsp.User.Uid) > 0 {
			rsp.Uid = loginRsp.User.Uid
			rsp.Status = 200
			rsp.Msg = "success"
			// TODO: generate token
			return rsp, nil
		}

		_, err = Register(userService)(ctx, req)
		if err != nil {
			return rsp, err
		}

		return Login(userService)(ctx, req)
	}
}

func Register(userService service.IUserService) endpoint.Endpoint {
	return func(ctx context.Context, request interface{}) (interface{}, error) {
		return nil, nil
	}
}

func UpdateProfile(userService service.IUserService) endpoint.Endpoint {
	return func(ctx context.Context, request interface{}) (interface{}, error) {
		return nil, nil
	}
}

func ReadProfile(userService service.IUserService) endpoint.Endpoint {
	return func(ctx context.Context, request interface{}) (interface{}, error) {
		return nil, nil
	}
}