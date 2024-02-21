USE EJERCICIO2;

CREATE TABLE users(
	id INT auto_increment PRIMARY KEY UNIQUE,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    phone_number INT
	
);

CREATE TABLE restaurants(
	id INT auto_increment PRIMARY KEY UNIQUE,
    name VARCHAR(100) NOT NULL,
    phone_number INT
);

CREATE TABLE reservations(
	id INT PRIMARY KEY UNIQUE,
    date TIMESTAMP NOT NULL,
    user_id INT,
    restaurant_id INT,
    FOREIGN KEY (user_id) references users(id),
    FOREIGN KEY (restaurant_id) references restaurants(id)
);

CREATE TABLE restaurant_users(
	id INT PRIMARY KEY
);

DROP TABLE restaurant_users;

CREATE TABLE reviews(
	id INT PRIMARY KEY UNIQUE,
    user_id int,
    restaurant_id INT,
    description VARCHAR(1000),
    punctuatuon INT,
    
    FOREIGN KEY (user_id) references users(id),
    FOREIGN KEY (restaurant_id) references restaurants(id)
);