package db

import (
	"database/sql"
	"fmt"
	"log"
	"sync"
	"time"

	_ "github.com/go-sql-driver/mysql"
)

var (
	inited bool
	dbUser     *sql.DB
	dbAgency   *sql.DB
	m      sync.RWMutex
)

func Init() {
	m.Lock()
	defer m.Unlock()

	var err error

	if inited {
		err = fmt.Errorf("[Init] db has inited")
		log.Println(err.Error())
		return
	}

	dsnUser := "micro:tF#262420228@tcp(127.0.0.1:3306)/user?charset=utf8"
	dsnAgency := "micro:tF#262420228@tcp(127.0.0.1:3306)/agency?charset=utf8"
	dbUser, err = sql.Open("mysql", dsnUser)
	dbAgency, err = sql.Open("mysql", dsnAgency)
	if err != nil {
		fmt.Println(err)
	}
	dbUser.SetMaxIdleConns(20)
	dbUser.SetMaxOpenConns(100)
	dbUser.SetConnMaxLifetime(time.Hour)
	inited = true
}

func GetUserDB() *sql.DB {
	if !inited {
		panic("DB does not init")
	}

	return dbUser
}

func GetAgencyDB() *sql.DB {
	if !inited {
		panic("DB does not init")
	}

	return dbAgency
}
