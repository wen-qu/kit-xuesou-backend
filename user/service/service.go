package service

import (
	"github.com/wen-qu/kit-xuesou-backend/user/model"
)

type IUserService interface {
	InspectUser(req model.InspectRequest) model.InspectResponse
	UpdateUser(req model.UpdateRequest) model.UpdateResponse
	AddUser(req model.AddRequest) model.AddResponse
	DeleteUser(req model.DeleteRequest) model.DeleteResponse
}

type userService struct {}

func NewService() IUserService {
	return userService{}
}

func (user userService)InspectUser(req model.InspectRequest) (rsp model.InspectResponse) {
	//var user model.User
	//var row *sql.Row
	//
	//if len(req.Uid) > 0 {
	//	row = db.GetUserDB().QueryRow("select uid, username, password, tel, age, sex, email, " +
	//		"address, class_num, img from user where uid = ?", req.Uid)
	//} else if len(req.Tel) > 0 {
	//	row = db.GetUserDB().QueryRow("select uid, username, password, tel, age, sex, email, " +
	//		"address, class_num, img from user where uid = ? and password = ?", req.Uid, req.Password)
	//} else {
	//	return errors.BadRequest("para:001", "missing parameters: uid or tel")
	//}
	//
	//err := row.Scan(
	//	&model.user.Uid, &user.Username, &user.Password,
	//	&user.Tel, &user.Age, &user.Sex,
	//	&user.Email, &user.Address, &user.ClassNum, &user.Img)
	//
	//if err == sql.ErrNoRows {
	//	return nil
	//} else if err != nil {
	//	return errors.InternalServerError("user-srv.UserSrv.InspectUser:fatal:001", err.Error())
	//}
	//
	//rsp.User = &user
	//
	//return nil
	return model.InspectResponse{}
}

func (user userService)UpdateUser(req model.UpdateRequest) (rsp model.UpdateResponse) {
	return model.UpdateResponse{}
}

func (user userService)AddUser(req model.AddRequest) (rsp model.AddResponse) {
	return model.AddResponse{}
}

func (user userService)DeleteUser(req model.DeleteRequest) (rsp model.DeleteResponse) {
	return model.DeleteResponse{}
}
