package service

import "github.com/wen-qu/kit-xuesou-backend/agency/model"

type IAgencyService interface {
	ReadAgencyDetails(req model.ReadAgencyRequest) (model.ReadAgencyResponse, error)
	InspectAgency(req model.InspectAgencyRequest) (model.InspectAgencyResponse, error)
	AddAgency(req model.AddAgencyRequest) (model.AddAgencyResponse, error)
	UpdateAgency(req model.UpdateAgencyRequest) (model.UpdateAgencyResponse, error)
	DeleteAgency(req model.DeleteAgencyRequest) (model.DeleteAgencyResponse, error)
	ReadEvaluations(req model.ReadEvaluationsRequest) (model.ReadEvaluationsResponse, error)
	AddEvaluation(req model.AddEvaluationRequest) (model.AddEvaluationResponse, error)
	UpdateEvaluation(req model.UpdateEvaluationRequest) (model.UpdateEvaluationResponse, error)
	DeleteEvaluation(req model.DeleteEvaluationRequest) (model.DeleteEvaluationResponse, error)
	GetNearbyAgencies(req model.GetNearbyAgenciesRequest) (model.GetNearbyAgenciesResponse, error)
}

type agencyService struct{}

func NewService() IAgencyService {
	return agencyService{}
}

func (agency agencyService)ReadAgencyDetails(req model.ReadAgencyRequest) (model.ReadAgencyResponse, error) {
	return model.ReadAgencyResponse{}, nil
}

func (agency agencyService)InspectAgency(req model.InspectAgencyRequest) (model.InspectAgencyResponse, error) {
	return model.InspectAgencyResponse{}, nil
}

func (agency agencyService)AddAgency(req model.AddAgencyRequest) (model.AddAgencyResponse, error) {
	return model.AddAgencyResponse{}, nil
}

func (agency agencyService)UpdateAgency(req model.UpdateAgencyRequest) (model.UpdateAgencyResponse, error) {
	return model.UpdateAgencyResponse{}, nil
}

func (agency agencyService)DeleteAgency(req model.DeleteAgencyRequest) (model.DeleteAgencyResponse, error) {
	return model.DeleteAgencyResponse{}, nil
}

func (agency agencyService)ReadEvaluations(req model.ReadEvaluationsRequest) (model.ReadEvaluationsResponse, error) {
	return model.ReadEvaluationsResponse{}, nil
}

func (agency agencyService)AddEvaluation(req model.AddEvaluationRequest) (model.AddEvaluationResponse, error) {
	return model.AddEvaluationResponse{}, nil
}

func (agency agencyService)UpdateEvaluation(req model.UpdateEvaluationRequest) (model.UpdateEvaluationResponse, error) {
	return model.UpdateEvaluationResponse{}, nil
}

func (agency agencyService)DeleteEvaluation(req model.DeleteEvaluationRequest) (model.DeleteEvaluationResponse, error) {
	return model.DeleteEvaluationResponse{}, nil
}

func (agency agencyService)GetNearbyAgencies(req model.GetNearbyAgenciesRequest) (model.GetNearbyAgenciesResponse, error) {
	return model.GetNearbyAgenciesResponse{}, nil
}
