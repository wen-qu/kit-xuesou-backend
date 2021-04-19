package model

type Teacher struct {
	TeacherID   string   `json:"teacherID"`
	Name        string   `json:"name"`
	Pic         string   `json:"pic"`
	Tag         []string `json:"tag"`
	Tel         string   `json:"tel"`
	Description string   `json:"description"`
}

type ReadTeachersRequest struct {
	TeacherID string `json:"teacherID"`
	AgencyID  string `json:"agencyID"`
}

type ReadTeachersResponse struct {
	Teachers []*Teacher `json:"teachers"`
	Msg      string     `json:"msg"`
	Status   int32      `json:"status"`
}

type AddTeacherRequest struct {
	AgencyID string   `json:"agencyID"`
	Teacher  *Teacher `json:"teacher"`
}

type AddTeacherResponse struct {
	TeacherID string `json:"teacherID"`
	Msg       string `json:"msg"`
	Status    int32  `json:"status"`
}

type UpdateTeacherRequest struct {
	Teacher  *Teacher `json:"teacher"`
	AgencyID string   `json:"agencyID"`
}

type UpdateTeacherResponse struct {
	Msg    string `json:"msg"`
	Status int32  `json:"status"`
}

type DeleteTeacherRequest struct {
	TeacherID string `json:"teacherID"`
	AgencyID  string `json:"agencyID"`
}

type DeleteTeacherResponse struct {
	Msg    string `json:"msg"`
	Status int32  `json:"status"`
}
