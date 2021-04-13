package model

type Class struct {
	ClassID   string  `protobuf:"bytes,1,opt,name=classID,proto3" json:"classID,omitempty"`
	Price     float32 `protobuf:"fixed32,2,opt,name=price,proto3" json:"price,omitempty"`
	Name      string  `protobuf:"bytes,3,opt,name=name,proto3" json:"name,omitempty"`
	Age       string  `protobuf:"bytes,4,opt,name=age,proto3" json:"age,omitempty"`
	StuNumber int32   `protobuf:"varint,5,opt,name=stuNumber,proto3" json:"stuNumber,omitempty"`
	Level     string  `protobuf:"bytes,6,opt,name=level,proto3" json:"level,omitempty"`
}
