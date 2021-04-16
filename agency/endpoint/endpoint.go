package endpoint

import (
	"context"
	"github.com/go-kit/kit/endpoint"
	"github.com/wen-qu/kit-xuesou-backend/agency/model"
	"github.com/wen-qu/kit-xuesou-backend/agency/service"
	"github.com/wen-qu/kit-xuesou-backend/general/errors"
)

type Endpoints struct {
	GetAgencies endpoint.Endpoint
	Search endpoint.Endpoint
	GetAgencyDetail endpoint.Endpoint
	UpdateAgencyDetail endpoint.Endpoint
	GetEvaluation endpoint.Endpoint
	GetNearbyAgencies endpoint.Endpoint
	Login endpoint.Endpoint
	Register endpoint.Endpoint
}

func Login(agencyService service.IAgencyService) endpoint.Endpoint {
	return func(ctx context.Context, request interface{}) (interface{}, error) {
		var rsp model.LoginResponse
		req := request.(model.LoginRequest)

		if len(req.ValidationCode) == 0 {
			return rsp, errors.BadRequest("agency:001", "missing parameters")

		}

		// TODO: check the validation code
		//rspCheck, err := SecClient.CheckValidation(ctx, &security.CheckValidationRequest{
		//	Code: req.ValidationCode,
		//	Tel:  req.Tel,
		//})
		//if err != nil {
		//	return err
		//}
		//
		//if rspCheck.Status == 401 {
		//	rsp.Status = 401
		//	rsp.Msg = "invalid validation code"
		//	return nil
		//}

		rspLogin, err := agencyService.InspectAgency(model.InspectAgencyRequest{
			Tel:      req.Tel,
			Password: req.Password,
		})
		if err != nil {
			return rsp, err
		}
		if rspLogin.Agency == nil {
			rsp.Status = 401
			rsp.Msg = "wrong password"
		} else {
			rsp.Status = 200
			rsp.Msg = "success"
		}

		return rsp, nil
	}
}

func Register(agencyService service.IAgencyService) endpoint.Endpoint {
	return func(ctx context.Context, request interface{}) (interface{}, error) {
		req := request.(model.RegisterRequest)
		var rsp model.RegisterResponse
		if len(req.Agency.Name) == 0 || len(req.Agency.Tel) == 0 || len(req.ValidationCode) == 0 {
			return rsp, errors.BadRequest("para:001", "missing parameters")
		}

		// TODO: check the validation code
		//rspCheck, err := SecClient.CheckValidation(ctx, &security.CheckValidationRequest{
		//	Code: req.ValidationCode,
		//	Tel:  req.Agency.Tel,
		//})
		//if err != nil {
		//	return err
		//}
		//
		//if rspCheck.Status == 401 {
		//	rsp.Status = 401
		//	rsp.Msg = "invalid validation code"
		//	return nil
		//}

		rspRegister, err := agencyService.AddAgency(model.AddAgencyRequest{
			Agency:          req.Agency,
		})
		if err != nil {
			return rsp, err
		}
		rsp.AgencyID = rspRegister.AgencyID
		rsp.Msg = ""
		rsp.Status = 200

		return rsp, nil
	}
}

func GetAgencies(agencyService service.IAgencyService) endpoint.Endpoint {
	return func(ctx context.Context, request interface{}) (interface{}, error) {
		var rsp model.GetAgenciesResponse
		req := request.(model.GetAgenciesRequest)
		if len(req.S) == 0 {
			return rsp, errors.BadRequest("para:001", "missing parameters: s")
		}

		rspAgencies, err := agencyService.ReadAgencyDetails(model.ReadAgencyRequest{
			S: req.S,
		})
		if err != nil {
			return rsp, err
		}

		if len(rspAgencies.Agencies) == 0 {
			return rsp, nil
		}

		for i := 0; i < len(rspAgencies.Agencies); i++ {
			rsp.Agencies = append(rsp.Agencies, rspAgencies.Agencies[i])
		}

		rsp.Status = 200
		rsp.Msg = ""
		return rsp, nil
	}
}

func Search(agencyService service.IAgencyService) endpoint.Endpoint {
	return nil
}

func GetAgencyDetail(agencyService service.IAgencyService) endpoint.Endpoint {
	return func(ctx context.Context, request interface{}) (interface{}, error) {
		var rsp model.GetAgencyDetailResponse
		req := request.(model.GetAgencyDetailRequest)
		if len(req.AgencyID) == 0 {
			return rsp, errors.BadRequest("para:001", "missing parameters: agencyID")
		}

		// get general information
		rspAgency, err := agencyService.ReadAgencyDetails(model.ReadAgencyRequest{
			AgencyID: req.AgencyID,
		})

		if err != nil {
			return rsp, err
		}

		if len(rspAgency.Agencies) == 0 {
			return rsp, nil
		}

		rsp.General = rspAgency.Agencies[0]
		rsp.BrandStory = rspAgency.BrandHistory
		rsp.Characteristics = rspAgency.Characteristics

		// TODO: get classes information
		//rspClass, err := ClassClient.ReadClassesByAgencyID(ctx, &classsrv.ReadClassRequest{
		//	AgencyID: rsp.General.AgencyID,
		//})
		//if err != nil {
		//	return err
		//}
		//
		//if err := copier.Copy(rsp.General.Classes, rspClass.Classes); err != nil {
		//	return errors.InternalServerError("agency-web.AgencyWeb.GetAgencyDetail:fatal:002", err.Error())
		//}

		// TODO: read teachers, evaluations and nearby agencies information.
		return rsp, nil
	}
}

func UpdateAgencyDetail(agencyService service.IAgencyService) endpoint.Endpoint {
	return func(ctx context.Context, request interface{}) (interface{}, error) {
		var rsp model.UpdateAgencyDetailResponse
		req := request.(model.UpdateAgencyDetailRequest)
		if len(req.General.AgencyID) == 0 {
			return rsp, errors.BadRequest("para:001", "missing parameters: General.agencyID")
		}

		rspAgency, err := agencyService.UpdateAgency(model.UpdateAgencyRequest{
			Agency:  req.General,
		})

		if err != nil {
			return rsp, err
		}

		if rspAgency.Status == 200 {
			rsp.Msg = "success"
			rsp.Status = 200
		}
		return rsp, nil
	}
}

func GetEvaluation(agencyService service.IAgencyService) endpoint.Endpoint {
	return func(ctx context.Context, request interface{}) (interface{}, error) {
		var rsp model.GetEvaluationResponse
		req := request.(model.GetEvaluationRequest)
		if len(req.AgencyID) == 0 {
			return rsp, errors.BadRequest("para:001", "missing parameters: agencyID")
		}

		evaluations, err := agencyService.ReadEvaluations(model.ReadEvaluationsRequest{
			AgencyID:     req.AgencyID,
		})
		if err != nil {
			return rsp, err
		}
		if len(evaluations.Evaluation) == 0 {
			return rsp, nil
		}

		rsp.OverEvaluation = evaluations.OverEvaluation
		rsp.Evaluations = evaluations.Evaluation

		rsp.Msg = ""
		rsp.Status = 200

		return rsp, nil
	}
}

func GetNearbyAgencies(agencyService service.IAgencyService) endpoint.Endpoint {
	return nil
}