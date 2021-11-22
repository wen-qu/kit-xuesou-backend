package service

import (
	"github.com/wen-qu/kit-xuesou-backend/general/db"
	"github.com/wen-qu/kit-xuesou-backend/general/errors"
	"github.com/wen-qu/kit-xuesou-backend/teacher/model"
	"regexp"
	"strings"
)

type ITeacherService interface {
	ReadTeachers(req model.ReadTeachersRequest) (model.ReadTeachersResponse, error)
	AddTeacher(req model.AddTeacherRequest) (model.AddTeacherResponse, error)
	UpdateTeacher(req model.UpdateTeacherRequest) (model.UpdateTeacherResponse, error)
	DeleteTeacher(req model.DeleteTeacherRequest) (model.DeleteTeacherResponse, error)
}

type teacherService struct {}

func NewService() ITeacherService {
	return teacherService{}
}

func (teacher teacherService) ReadTeachers(req model.ReadTeachersRequest) (model.ReadTeachersResponse, error) {
	var rsp model.ReadTeachersResponse
	if matched, _ := regexp.Match("/^agency_[0-9]{10}$/", []byte(req.AgencyID)); !matched {
		return rsp, errors.BadRequest("para:002", "invalid parameters: agencyID")
	}
	if matched, _ := regexp.Match("/^teacher_[0-9]{10}$/", []byte(req.TeacherID)); !matched {
		return rsp, errors.BadRequest("para:002", "invalid parameters: teacherID")
	}

	var teachers []*model.Teacher
	var tableName string
	var tagString string

	tableName = req.AgencyID + "_agency_teacher_table"

	if len(req.TeacherID) > 0 {
		teacher := new(model.Teacher)
		err := db.GetAgencyDB().QueryRow("select name, pic, tag, tel, description from " +
			tableName + "where teacher_id = ?", req.TeacherID).Scan(&teacher.Name, &teacher.Pic,
				&tagString, &teacher.Tel, &teacher.Description)
		if err != nil {
			return rsp, errors.InternalServerError("teacher-srv.TeacherSrv.ReadTeachers:fatal:001", err.Error())
		}
		teacher.TeacherID = req.TeacherID
		teacher.Tag = strings.Split(tagString, ",")
		teachers = append(teachers, teacher)

		rsp.Teachers = teachers
		rsp.Status = 200
		rsp.Msg = ""

		return rsp, nil
	}

	rows, err := db.GetAgencyDB().Query("select teacher_id, name, pic, tag, tel, description from " +
		tableName, req.AgencyID)
	if err != nil {
		return rsp, errors.InternalServerError("teacher-srv.TeacherSrv.ReadTeachers:fatal:002", err.Error())
	}

	for rows.Next() {
		teacher := new(model.Teacher)
		err := rows.Scan(&teacher.TeacherID, &teacher.Name, &teacher.Pic, &tagString, &teacher.Tel, &teacher.Description)
		if err != nil {
			return rsp, errors.InternalServerError("teacher-srv.TeacherSrv.ReadTeachers:fatal:003", err.Error())
		}
		teacher.Tag = strings.Split(tagString, ",")
		teachers = append(teachers, teacher)
	}

	rsp.Teachers = teachers
	rsp.Status = 200
	rsp.Msg = ""

	return rsp, nil
}

func (teacher teacherService) AddTeacher(req model.AddTeacherRequest) (model.AddTeacherResponse, error) {
	return model.AddTeacherResponse{}, nil
}

func (teacher teacherService) UpdateTeacher(req model.UpdateTeacherRequest) (model.UpdateTeacherResponse, error) {
	return model.UpdateTeacherResponse{}, nil
}

func (teacher teacherService) DeleteTeacher(req model.DeleteTeacherRequest) (model.DeleteTeacherResponse, error) {
	return model.DeleteTeacherResponse{}, nil
}

