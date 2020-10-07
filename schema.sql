CREATE TABLE IF NOT EXISTS users
(
    id char (16) PRIMARY KEY ,
    first_name varchar (50),
    last_name varchar (50),
    birthday DATE ,
    gender enum ('male', 'female', 'other') default null,
    photo varchar (255),
    interests json,
    nickname varchar (50) null ,
    vibe varchar (30) null ,
    about_me text,
    signup_method enum ('email', 'facebook', 'phone'),
    phone varchar (30) null ,
    email varchar (50) null ,
    password varchar (50) null ,
    created_at timestamp default CURRENT_TIMESTAMP ,
    updated_at timestamp default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
    deleted_at timestamp null
)

INSERT INTO db.users (id, first_name, last_name, birthday, signup_method, phone) values
(
 'dec6775a-df20-4f59-833f-57eaf3aa459d',
 'Dejvis',
 'Sheshi',
 CURRENT_DATE(),
 'phone',
 '+3556890228'
)
