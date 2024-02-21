-- EJERCICIO 1


CREATE DATABASE GEEKSHUBS;
-- USAR GEEKSHUBS DB
USE GEEKSHUBS;
-- CREAR TABLA USERS
CREATE TABLE users( 
	id INT auto_increment PRIMARY KEY,
    name varchar(40),
    email varchar(50) NOT NULL UNIQUE,
    password varchar(255) NOT NULL,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);
-- ELIMINAR TABLA
DROP TABLE users;

-- MODIFICAR TABLA
-- añadir columna
ALTER TABLE users
ADD COLUMN is_active boolean DEFAULT true;

-- borrar columna
ALTER TABLE users
DROP COLUMN is_active;

-- añadir columna despues de...usersusers
ALTER TABLE users
ADD COLUMN is_active boolean DEFAULT true after password;

DROP TABLE tasks;

CREATE TABLE tasks(
id INT auto_increment primary key,
title varchar(40) not null,
description varchar(200),
user_id int,
status enum("pening", "in_process","donde"),
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp on update current_timestamp,

FOREIGN KEY (user_id) references users(id)
)