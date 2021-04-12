package endpoint

import (
	"context"
	"github.com/go-kit/kit/endpoint"
	"github.com/wen-qu/kit-xuesou-backend/user/service"
	"github.com/wen-qu/kit-xuesou-backend/user/transport"
)

type Endpoints struct {
	UidEndpoint endpoint.Endpoint
}

func MakeUidEndpoint(srv service.IUserService) endpoint.Endpoint {  // similar to user-web
	return func(ctx context.Context, req interface{}) (interface{}, error) {
		r := req.(transport.UserRequest)
		result := srv.GetName(r.Uid)
		return transport.UserResponse{Result: result}, nil
	}
}
