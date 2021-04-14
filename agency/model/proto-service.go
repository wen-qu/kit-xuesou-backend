package model

import class "github.com/wen-qu/kit-xuesou-backend/class/model"
import teacher "github.com/wen-qu/kit-xuesou-backend/teacher/model"

type Agency struct {
	AgencyID      string   `json:"agencyID"`
	Name          string   `json:"name"`
	Password      string   `json:"password"`
	Tel           string   `json:"tel"`
	Rating        float32  `json:"rating"`
	Comments      int32    `json:"comments"`
	Order         string   `json:"order"`
	Tags          []string `json:"tags"`
	Address       string   `json:"address"`
	AddressDetail string   `json:"addressDetail"`
	Distance      float32  `json:"distance"`
	Icon          string   `json:"icon"`
	Photos        []string `json:"photos"`
	Classes       []*class.Class `json:"classes"`
}

type OverEvaluation struct {
	GeneralRate float32 `json:"generalRate"`
	UpRate      int32   `json:"upRate"`
	GoodRate    float32 `json:"goodRate"`
}

type Evaluation struct {
	EvaluationID string   `json:"evaluationID"`
	Favicon      string   `json:"favicon"` // user's icon
	Rating       float32  `json:"rating"`
	Username     string   `json:"username"`
	Class        *class.Class   `json:"class"`
	Detail       string   `json:"detail"`
	Pics         []string `json:"pics"`
}

type ReadAgencyRequest struct {
	AgencyID    string   `json:"agencyID"`
	Name        string   `json:"name"`
	Tags        []string `json:"tags"`
	FilterItems []string `json:"filter_items"`
	S           string   `json:"s"` // search
}

type ReadAgencyResponse struct {
	Status          int32     `json:"status"`
	Agencies        []*Agency `json:"agencies"`
	BrandHistory    string    `json:"brandHistory"`
	Characteristics []string  `json:"characteristics"`
	Msg             string    `json:"msg"`
}

type InspectAgencyRequest struct {
	Tel      string `json:"tel"`
	AgencyID string `json:"agencyID"`
	Password string `json:"password"`
}

type InspectAgencyResponse struct {
	Agency *Agency `json:"agency"`
	Msg    string  `json:"msg"`
	Status int32   `json:"status"`
}

type AddAgencyRequest struct {
	Agency          *Agency  `json:"agency"`
	BrandHistory    string   `json:"brandHistory"`
	Characteristics []string `json:"characteristics"`
}

type AddAgencyResponse struct {
	Status   int32  `json:"status"`
	AgencyID string `json:"agencyID"`
	Msg      string `json:"msg"`
}

type UpdateAgencyRequest struct {
	Agency          *Agency    `json:"agency"`
	BrandHistory    string     `json:"brandHistory"`
	Characteristics []string   `json:"characteristics"`
	Teachers        []*teacher.Teacher `json:"teachers"`
}

type UpdateAgencyResponse struct {
	Status int32  `json:"status"`
	Msg    string `json:"msg"`
}

type DeleteAgencyRequest struct {
	AgencyID string `json:"AgencyID"`
}

type DeleteAgencyResponse struct {
	Status int32  `json:"status"`
	Msg    string `json:"msg"`
}

type ReadEvaluationsRequest struct {
	AgencyID     string `json:"agencyID"`
	Uid          string `json:"uid"`
	EvaluationID string `json:"evaluationID"`
}

type ReadEvaluationsResponse struct {
	Evaluation     []*Evaluation   `json:"evaluation"`
	OverEvaluation *OverEvaluation `json:"overEvaluation"`
	Msg            string          `json:"msg"`
	Status         int32           `json:"status"`
}

type AddEvaluationRequest struct {
	Evaluation *Evaluation `json:"evaluation"`
	Uid        string      `json:"uid"`
	AgencyID   string      `json:"agencyID"`
}

type AddEvaluationResponse struct {
	EvaluationID string `json:"evaluationID"`
	Msg          string `json:"msg"`
	Status       int32  `json:"status"`
}

type UpdateEvaluationRequest struct {
	Evaluation *Evaluation `json:"evaluation"`
	Uid        string      `json:"uid"`
	AgencyID   string      `json:"agencyID"`
}

type UpdateEvaluationResponse struct {
	Msg    string `json:"msg"`
	Status int32  `json:"status"`
}

type DeleteEvaluationRequest struct {
	EvaluationID string `json:"evaluationID"`
	Uid          string `json:"uid"`
	AgencyID     string `json:"agencyID"`
}

type DeleteEvaluationResponse struct {
	Msg    string `json:"msg"`
	Status int32  `json:"status"`
}

type GetNearbyAgenciesRequest struct {
	Agency *Agency `json:"agency"`
}

type GetNearbyAgenciesResponse struct {
	Agencies []*Agency `json:"agencies"`
	Msg      string    `json:"msg"`
	Status   int32     `json:"status"`
}
