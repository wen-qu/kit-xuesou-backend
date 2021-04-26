package service

import (
	"github.com/wen-qu/kit-xuesou-backend/general/errors"
	"github.com/wen-qu/kit-xuesou-backend/teacher/model"
	"regexp"
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
	return model.ReadTeachersResponse{}, nil
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

