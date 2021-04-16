package model

import teacher "github.com/wen-qu/kit-xuesou-backend/teacher/model"

type Ad struct {}

type LoginRequest struct {
	Tel            string `json:"tel"`
	Password       string `json:"password"`
	ValidationCode string `json:"validationCode"`
}

type LoginResponse struct {
	Msg      string `json:"msg"`
	Status   int32  `json:"status"`
	AgencyID string `json:"agencyID"`
	Token    string `json:"token"`
}

type RegisterRequest struct {
	Agency         *Agency `json:"agency"`
	ValidationCode string  `json:"validationCode"`
}

type RegisterResponse struct {
	AgencyID string `json:"agencyID"`
	Status   int32  `json:"status"`
	Msg      string `json:"msg"`
}

type GetAgenciesRequest struct {
	FilterItem []string `json:"filterItem"`
	S          string   `json:"s"`
}

type GetAgenciesResponse struct {
	Status   int32     `json:"status"`
	Agencies []*Agency `json:"agencies"`
	Msg      string    `json:"msg"`
}

type SearchRequest struct {}

type SearchResponse struct {
	Status        int32    `json:"status"`
	SearchKeyword string   `json:"searchKeyword"`
	HotSearch     []string `json:"hotSearch"`
	SearchHistory []string `json:"searchHistory"`
	Msg           string   `json:"msg"`
}

type GetAgencyDetailRequest struct {
	AgencyID string `json:"agencyID"`
}

type GetAgencyDetailResponse struct {
	General         *Agency    `json:"general"`
	Ad              *Ad        `json:"ad"`
	BrandStory      string     `json:"brandStory"`
	Characteristics []string   `json:"characteristics"`
	Teachers        []*teacher.Teacher `json:"teachers"`
	Msg             string     `json:"msg"`
	Status          int32      `json:"status"`
}

type UpdateAgencyDetailRequest struct {
	General         *Agency    `json:"general"`
	BrandHistory    string     `json:"brandHistory"`
	Characteristics []string   `json:"characteristics"`
	Teachers        []*teacher.Teacher `json:"teachers"`
}

type UpdateAgencyDetailResponse struct {
	Msg    string `json:"msg"`
	Status int32  `json:"status"`
}

type GetEvaluationRequest struct {
	AgencyID string `json:"agencyID"`
}

type GetEvaluationResponse struct {
	OverEvaluation *OverEvaluation `json:"overEvaluation"`
	Evaluations    []*Evaluation   `json:"evaluations"`
	Msg            string          `json:"msg"`
	Status         int32           `json:"status"`
}

