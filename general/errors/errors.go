package errors

import (
	"encoding/json"
	"fmt"
	"net/http"
)

type Error struct {
	Id string
	Code int32
	Detail string
	Status string
}

func (e *Error) Error() string {
	b, _ := json.Marshal(e)
	return string(b)
}

// BadRequest generates a 400 error.
func BadRequest(id, format string, a ...interface{}) error {
	return &Error{
		Id:     id,
		Code:   400,
		Detail: fmt.Sprintf(format, a...),
		Status: http.StatusText(400),
	}
}

// Unauthorized generates a 401 error.
func Unauthorized(id, format string, a ...interface{}) error {
	return &Error{
		Id:     id,
		Code:   401,
		Detail: fmt.Sprintf(format, a...),
		Status: http.StatusText(401),
	}
}

// Forbidden generates a 403 error.
func Forbidden(id, format string, a ...interface{}) error {
	return &Error{
		Id:     id,
		Code:   403,
		Detail: fmt.Sprintf(format, a...),
		Status: http.StatusText(403),
	}
}

// NotFound generates a 404 error.
func NotFound(id, format string, a ...interface{}) error {
	return &Error{
		Id:     id,
		Code:   404,
		Detail: fmt.Sprintf(format, a...),
		Status: http.StatusText(404),
	}
}

// MethodNotAllowed generates a 405 error.
func MethodNotAllowed(id, format string, a ...interface{}) error {
	return &Error{
		Id:     id,
		Code:   405,
		Detail: fmt.Sprintf(format, a...),
		Status: http.StatusText(405),
	}
}

// Timeout generates a 408 error.
func Timeout(id, format string, a ...interface{}) error {
	return &Error{
		Id:     id,
		Code:   408,
		Detail: fmt.Sprintf(format, a...),
		Status: http.StatusText(408),
	}
}

// Conflict generates a 409 error.
func Conflict(id, format string, a ...interface{}) error {
	return &Error{
		Id:     id,
		Code:   409,
		Detail: fmt.Sprintf(format, a...),
		Status: http.StatusText(409),
	}
}

// InternalServerError generates a 500 error.
func InternalServerError(id, format string, a ...interface{}) error {
	return &Error{
		Id:     id,
		Code:   500,
		Detail: fmt.Sprintf(format, a...),
		Status: http.StatusText(500),
	}
}

// NotImplemented generates a 501 error
func NotImplemented(id, format string, a ...interface{}) error {
	return &Error{
		Id:     id,
		Code:   501,
		Detail: fmt.Sprintf(format, a...),
		Status: http.StatusText(501),
	}
}

// BadGateway generates a 502 error
func BadGateway(id, format string, a ...interface{}) error {
	return &Error{
		Id:     id,
		Code:   502,
		Detail: fmt.Sprintf(format, a...),
		Status: http.StatusText(502),
	}
}

// ServiceUnavailable generates a 503 error
func ServiceUnavailable(id, format string, a ...interface{}) error {
	return &Error{
		Id:     id,
		Code:   503,
		Detail: fmt.Sprintf(format, a...),
		Status: http.StatusText(503),
	}
}

// GatewayTimeout generates a 504 error
func GatewayTimeout(id, format string, a ...interface{}) error {
	return &Error{
		Id:     id,
		Code:   504,
		Detail: fmt.Sprintf(format, a...),
		Status: http.StatusText(504),
	}
}
