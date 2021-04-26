package service

import (
	"database/sql"
	"github.com/wen-qu/kit-xuesou-backend/class/model"
	"github.com/wen-qu/kit-xuesou-backend/general/db"
	"github.com/wen-qu/kit-xuesou-backend/general/errors"
	"regexp"
	"strconv"
	"time"
)

type IClassService interface {
	ReadClass(req model.ReadClassRequest) (model.ReadClassResponse, error)
	AddClass(req model.AddClassRequest) (model.AddClassResponse, error)
	UpdateClass(req model.UpdateClassRequest) (model.UpdateClassResponse, error)
	DeleteClass(req model.DeleteClassRequest) (model.DeleteClassResponse, error)
}

type classService struct {}

func NewService() IClassService {
	return classService{}
}

func (class classService)ReadClass(req model.ReadClassRequest) (model.ReadClassResponse, error) {
	var rsp model.ReadClassResponse
	if len(req.AgencyID) == 0 {
		return rsp, errors.BadRequest("para:001", "missing parameters")
	}

	rows, err := db.GetAgencyDB().Query("select agency_id, class_id, price, name, stu_number, age, level, sales from " +
		req.AgencyID + "_agency_class_table")

	if err == sql.ErrNoRows {
		return rsp, nil
	} else if err != nil {
		return rsp, errors.InternalServerError("class-srv.ClassSrv.ReadClassesByAgencyID:fatal:001", err.Error())
	}

	for rows.Next() {
		cl := new(model.Class)
		err := rows.Scan(&cl.AgencyID, &cl.ClassID, &cl.Price, &cl.Name, &cl.StuNumber, &cl.Age, &cl.Level, &cl.Sales)
		if err != nil {
			return rsp, errors.InternalServerError("class-srv.ClassSrv.ReadClassesByAgencyID:fatal:002", err.Error())
		}
		rsp.Classes = append(rsp.Classes, cl)
	}

	rsp.Msg = ""
	rsp.Status = 200

	return rsp, nil
}

func (class classService)AddClass(req model.AddClassRequest) (model.AddClassResponse, error) {
	var rsp model.AddClassResponse
	if matched, _ := regexp.Match("/^agency_[0-9]{13}$/", []byte(req.Class.AgencyID)); !matched {
		return rsp, errors.BadRequest("para:002", "invalid parameters: agencyID")
	}

	if len(req.Class.Name) == 0 {
		return rsp, errors.BadRequest("para:001", "missing parameters: name")
	}
	tableName := req.Class.AgencyID + "_agency_class_table"
	createTime := time.Now().String()[:19] // e.g. "2006-01-02 15:04:05"
	lastUpdateTime := createTime
	classID := "class_" + strconv.Itoa(int(time.Now().Unix()))

	_, err := db.GetAgencyDB().Exec("insert into " + tableName + "(agency_id, class_id, price, name, " +
		"stu_number, age, level, sales, create_time, last_update_time) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
		req.Class.AgencyID, classID, req.Class.Price, req.Class.Name, req.Class.StuNumber,
		req.Class.Age, req.Class.Level, req.Class.Sales, createTime, lastUpdateTime)

	if err != nil {
		return rsp, errors.InternalServerError("class-srv.ClassSrv.AddClasses:fatal:001", err.Error())
	}

	rsp.ClassID = classID
	rsp.Msg = ""
	rsp.Status = 200
	return rsp, nil
}

func (class classService)UpdateClass(req model.UpdateClassRequest) (model.UpdateClassResponse, error) {
	var rsp model.UpdateClassResponse
	if matched, _ := regexp.Match("/^agency_[0-9]{13}$/", []byte(req.Class.AgencyID)); !matched {
		return rsp, errors.BadRequest("para:002", "invalid parameters: agencyID")
	}

	if matched, _ := regexp.Match("/^class_[0-9]{13}$/", []byte(req.Class.ClassID)); !matched {
		return rsp, errors.BadRequest("para:002", "invalid parameters: classID")
	}

	currentClass, err := class.ReadClass(model.ReadClassRequest{
		AgencyID: req.Class.AgencyID,
	})
	if err != nil {
		return rsp, errors.InternalServerError("class-srv.ClassSrv.UpdateClass:fatal:001", err.Error())
	}
	if len(currentClass.Classes) == 0 {
		return rsp, errors.Forbidden("class:001", "class not existed")
	}
	req.Class = currentClass.Classes[0]

	if len(req.Class.Name) == 0 {
		return rsp, errors.BadRequest("para:002", "invalid parameters: name")
	}

	tableName := req.Class.AgencyID + "_agency_class_name"
	lastUpdateTime := time.Now().String()[:19]
	_, err = db.GetAgencyDB().Exec("update " + tableName + "set " +
		"name = ?, price = ?, stu_number = ?, age = ?, level = ?, " +
		"sales = ?, last_update_time = ? where agency_id = ? and class_id = ?",
		req.Class.Name, req.Class.Price, req.Class.StuNumber, req.Class.Age,
		req.Class.Level, req.Class.Sales, lastUpdateTime, req.Class.AgencyID, req.Class.ClassID)
	if err != nil {
		return rsp, errors.InternalServerError("class-srv.ClassSrv.UpdateClass:fatal:003", err.Error())
	}

	rsp.Status = 200
	rsp.Msg = "success"

	return rsp, nil
}

func (class classService)DeleteClass(req model.DeleteClassRequest) (model.DeleteClassResponse, error) {
	var rsp model.DeleteClassResponse
	if len(req.ClassID) == 0 || len(req.AgencyID) == 0 {
		return rsp, errors.BadRequest("para:001", "missing parameters")
	}

	currentClass, err := class.ReadClass(model.ReadClassRequest{
		AgencyID: req.AgencyID,
	})
	if err != nil {
		return rsp, err
	}

	if len(currentClass.Classes) == 0 {
		return rsp, errors.Forbidden("class:001", "class not existed")
	}

	if req.AgencyID != currentClass.Classes[0].ClassID {
		return rsp, errors.Forbidden("class:003", "classID does not match agencyID")
	}
	tableName := req.AgencyID + "_agency_class_name"
	_, err = db.GetAgencyDB().Exec("delete from " + tableName + "where class_id = ?", currentClass.Classes[0].ClassID)

	if err != nil {
		return rsp, errors.InternalServerError("class-srv.ClassSrv.DeleteClass:fatal:002", err.Error())
	}

	// TODO: delete all evaluations of the class [optional]

	rsp.Msg = ""
	rsp.Status = 200
	return model.DeleteClassResponse{}, nil
}