package model

type Teacher struct {
	TeacherID   string   `protobuf:"bytes,1,opt,name=teacherID,proto3" json:"teacherID,omitempty"`
	Name        string   `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
	Pic         string   `protobuf:"bytes,3,opt,name=pic,proto3" json:"pic,omitempty"`
	Tag         []string `protobuf:"bytes,4,rep,name=tag,proto3" json:"tag,omitempty"`
	Tel         string   `protobuf:"bytes,5,opt,name=tel,proto3" json:"tel,omitempty"`
	Description string   `protobuf:"bytes,6,opt,name=description,proto3" json:"description,omitempty"`
}
