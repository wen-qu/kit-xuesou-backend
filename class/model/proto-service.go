package model

type Class struct {
	AgencyID  string  `json:"agencyID"`
	ClassID   string  `json:"classID"`
	Price     float32 `json:"price"`
	Name      string  `json:"name"`
	Age       string  `json:"age"`
	StuNumber int32   `json:"stuNumber"`
	Level     string  `json:"level"`
	Sales	  int32   `json:"sales"`
}

type ReadClassRequest struct {
	AgencyID string `json:"agencyID"`
}

type ReadClassResponse struct {
	Status  int32    `json:"status"`
	Classes []*Class `json:"classes"`
	Msg     string   `json:"msg"`
}

type AddClassRequest struct {
	Class *Class `json:"class"`
}

type AddClassResponse struct {
	Status  int32  `json:"status"`
	ClassID string `json:"classID"`
	Msg     string `json:"msg"`
}

type UpdateClassRequest struct {
	Class *Class `json:"class"`
}

type UpdateClassResponse struct {
	Status int32  `json:"status"`
	Msg    string `json:"msg"`
}

type DeleteClassRequest struct {
	AgencyID string `json:"agencyID"`
	ClassID  string `json:"classID"`
}

type DeleteClassResponse struct {
	Status int32  `json:"status"`
	Msg    string `json:"msg"`
}
