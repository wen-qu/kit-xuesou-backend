create database if not exists user;
create database if not exists agency;

use user;

create table if not exists `user_profile_table` ( -- users' basic profile
  `uid` varchar(15) primary key not null, -- e.g. 'user_1615280517'
  `username` varchar(50) not null, -- initialized as uid=username
  `password` varchar(32), -- hash
  `tel` varchar(11) not null,
  `email` varchar(50),
  `sex` tinyint,
  `age` tinyint,
  `address` varchar(256),
  `class_num` int,
  `img` varchar(100)
) engine=innodb default charset=utf8;

create table if not exists `user_login_inf_table` ( -- users' login information
  `uid` varchar(15) primary key not null,
  `username` varchar(50) not null,
  `is_login` tinyint not null,
  `last_login_time` varchar(20) not null, -- format: "yyyy-mm-dd hh:mm:ss"
  `last_login_device` varchar(50)
) engine=innodb default charset=utf8;

use agency;

create table if not exists `agency_profile_table` ( -- agencies' basic profile
  `agency_id` varchar(17) primary key not null, -- e.g. 'agency_1615280518432'
  `name` varchar(50) not null, -- initialized as uid=agency_name
  `password` varchar(32) not null, -- hash
  `tel` varchar(11) not null,
  `rating` float not null, -- 0-10
  `comments` int not null, -- number of the comments
  `order` int not null, -- number of the reservations
  `tags` varchar(120), -- maximum 6 tags, each tag max 8 characters
  `address` varchar(256) not null,
  `address_detail` varchar(256) not null,
  `icon` varchar(60) not null,
  `photos` varchar(700), -- maximum 20 photos, save each photo's filename(a hash)
  `brand_history` varchar(5000),
  `characteristics` varchar(250) -- maximum 8 words, each word maximum 30 characters. eg. 'excellent teacher,professional course,flexible time'
) engine=innodb default charset=utf8;

create table if not exists `agency_login_inf_table` ( -- agencies' login information
  `agency_id` varchar(17) primary key not null,
  `name` varchar(50) not null,
  `is_login` tinyint not null,
  `last_login_time` varchar(20) not null, -- format: "yyyy-mm-dd hh:mm:ss"
  `last_login_device` varchar(50)
) engine=innodb default charset=utf8;

create function CreateUser(@user_uid varchar(15))
returns bool
  begin
    insert into user.user_profile_table (uid, username, password, tel, email, sex, age, address, class_num, img) values (
      user_uid, 'test', 'e10adc3949ba59abbe56e057f20f883e', '13200000000', 'a@gmail.com', 0, 18,
      'People Square, HuangPu District, Shanghai, China', 0, 'https://img.xuesou.com/test/userimg/1'
    );

    set @user_class_table = concat(@user_uid, '_user_class_table');
    set @stmt_CreateUserClassTable = concat('create table if not exists ', @user_class_table, ' (
      `class_id` varchar(16) not null,
      `bought_time` varchar(20) not null,
      `agency_id` varchar(17) not null, -- the affiliation
      constraint fk_UserAgency foreign key (agency_id) references agency.agency_profile_table(agency_id)
    ) engine=innodb default charset=utf8;');
    prepare stmt from @stmt_CreateUserClassTable;
    execute stmt;

    set @user_chatting_table = concat(@user_uid, '_user_chatting_table');
    set @stmt_CreateUserChattingTable = concat('create table if not exists ', @user_chatting_table, ' (
      `chat_id` varchar(15) primary key not null, -- e.g. chat_1615280517
      `msg_num` int not null,
      `agency_id` varchar(17) not null,
      constraint fk_UserChatting foreign key (agency_id) references agency.agency_profile_table(agency_id)
      ) engine=innodb default charset=utf8;');
    prepare stmt from @stmt_CreateUserChattingTable;
    execute stmt;

    set @user_evaluation_table = concat(@user_uid, '_user_evaluation_table');
    set @stmt_CreateUserEvaluationTable = concat('create table if not exists ', @user_evaluation_table, ' (
      `evaluation_id` varchar(17) primary key not null, -- e.g. evalua_1615280517
      `favicon` varchar(60),
      `rating` float not null,
      `username` varchar(50) not null,
      `agency_id` varchar(17) not null,
      `class_id` varchar(16) not null,
      `detail` varchar(10000),
      `pics` varchar(700), -- maximum 20 photos
      constraint fk_UserEvaluation_Agency foreign key (agency_id) references agency.agency_profile_table(agency_id)
    ) engine=innodb default charset=utf8;');
    prepare stmt from @stmt_CreateUserEvaluationTable;
    execute stmt;

    return true;
  end;

create function CreateChattingTab(@chat_id varchar(16), @user_uid varchar(15), @_agency_id varchar(17))
returns bool
  begin
    set @chatting_table = concat(@user_uid, '_user_chatting_table');
    set @chatting_contents_table = concat(@user_uid, '_', @_agency_id, '_chatting_contents');
    set @stmt_InsertChattingTable = concat('insert into ', @chatting_table, ' (chat_id, msg_num, agency_id) values (',
        @chat_id, ', 0, ', @_agency_id);
    set @stmt_CreateChattingContentsTable = concat('create table if not exists ', @chatting_contents_table, ' (
      `content_id` int primary key not null,
      `chat_id` varchar(15) not null,
      `time` varchar(20) not null,
      `content` varchar(10000) not null,
      constraint fk_ChattingTab foreign key (chat_id) references @chatting_table(chat_id)
    ) engine=innodb default charset=utf8;');

    prepare stmt from @stmt_InsertChattingTable;
    execute stmt;
    prepare stmt from @stmt_CreateChattingContentsTable;
    execute stmt;

    return true;
  end;

create function CreateAgency(@_agency_id varchar(17))
returns bool
  begin
    insert into agency.agency_profile_table(agency_id, name, password, tel, rating, comments, `order`, tags, address,
      address_detail, icon, photos, brand_history, characteristics) values (_agency_id, 'test',
      'e10adc3949ba59abbe56e057f20f883e', '13800000000', 0, 0, 0, '', 'East Nanjing Road, Shanghai, China',
      'HongYi International Square', '', '', '', ''
    );
    set @agency_chatting_table = _agency_id + '_agency_chatting_table';
    create table if not exists `test_agency_chatting_table` ( -- standard format: [agency_id]_user_chatting_table
      `chat_id` varchar(15) primary key not null,
      `msg_num` int not null,
      `user_icon` varchar(60),
      `uid` varchar(15) not null,
      `username` varchar(50) not null,
      constraint fk_AgencyChatting foreign key (uid) references user.user_profile_table(uid)
    ) engine=innodb default charset=utf8; -- agency's all chatting box
    set @agency_class_table = _agency_id + '_agency_class_table';
    create table if not exists @agency_class_table ( -- standard format: [agency_id]_agency_class_table
      `class_id` varchar(16) primary key not null,
      `price` float,
      `name` varchar(50) not null,
      `stu_number` int,
      `age` varchar(10), -- eg. '4-14'; '20-30'
      `level` varchar(20), -- beginner, intermediate, advanced, expert
      `sales` int, -- number of sold
      `create_time` varchar(19), -- eg. '2006-07-01 12:24:58'
      `last_update_time` varchar(19) -- same as `create_time`
    ) engine=innodb default charset=utf8; -- agency's all classes
    set @agency_teacher_table = _agency_id + '_agency_teacher_table';
    create table if not exists @agency_teacher_table ( -- standard format: [agency_id]_agency_teacher_table
      `teacher_id` varchar(18) primary key not null,
      `name` varchar(50) not null,
      `pic`  varchar(60),
      `tag`  varchar(120),
      `tel`  varchar(11) not null,
      `description` varchar(400)
    ) engine=innodb default charset=utf8;
    set @agency_evaluation_table = _agency_id + '_agency_evaluation_table';
    create table if not exists @agency_evaluation_table ( -- only test table, standard format: [agency_id]_agency_evaluation_table
      `evaluation_id` varchar(17) primary key not null, -- e.g. 'evalua_1615280517432'
      `favicon` varchar(60),
      `rating` float not null, -- 0-10
      `username` varchar(50) not null,
      `uid` varchar(15) not null,
      `class_id` varchar(16) not null,
      `detail` varchar(10000),
      `pics` varchar(700), -- maximum 20 photos
      constraint fk_AgencyEvaluation_User foreign key (uid) references user.user_profile_table(uid)
    ) engine=innodb default charset=utf8;
  end

