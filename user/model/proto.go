package model

type User struct {
	Uid      string `json:"uid,omitempty"`
	Username string `json:"username,omitempty"`
	Password string `json:"password,omitempty"`
	Tel      string `json:"tel,omitempty"`
	Email    string `json:"email,omitempty"`
	Sex      int32  `json:"sex,omitempty"`
	Age      int32  `json:"age,omitempty"`
	Address  string `json:"address,omitempty"`
	ClassNum int32  `json:"classNum,omitempty"`
	Img      string `json:"img,omitempty"`
}

type AddRequest struct {
	User *User `json:"user,omitempty"`
}

type AddResponse struct {
	Uid    string `json:"uid"`
	Status int32  `json:"status,omitempty"`
	Msg    string `json:"msg,omitempty"`
}

type InspectRequest struct {
	Uid      string `json:"uid,omitempty"`
	Tel      string `json:"tel,omitempty"`
	Password string `json:"password,omitempty"`
}

type InspectResponse struct {
	User   *User  `json:"user,omitempty"`
	Msg    string `json:"msg,omitempty"`
	Status int32  `json:"status,omitempty"`
}

type UpdateRequest struct {
	User *User `json:"user,omitempty"`
}

type UpdateResponse struct {
	Status int32  `json:"status,omitempty"`
	Msg    string `json:"msg,omitempty"`
}

type DeleteRequest struct {
	Uid string `json:"uid,omitempty"`
	Tel string `json:"tel,omitempty"`
}

type DeleteResponse struct {
	Status int32  `json:"status,omitempty"`
	Msg    string `json:"msg,omitempty"`
}


