package service

import "github.com/wen-qu/kit-xuesou-backend/teacher/model"

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

