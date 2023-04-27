CREATE DATABASE taxidb;
CREATE SCHEMA data;

CREATE TABLE data.User (
    id serial PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    mail VARCHAR(100) NOT NULL,
    phone_number VARCHAR(100) NOT NULL
);
CREATE TABLE data.Passenger (
    id serial PRIMARY KEY,
    user_id INT UNIQUE NOT NULL,
    prefer_payment INT
);
CREATE TABLE data.PassengrtRating (
    id serial PRIMARY KEY,
    behavior INT NOT NULL,
    on_time INT NOT NULL,
    passenger_id INT NOT NULL,
    passing INT UNIQUE NOT NULL
);
CREATE TABLE data.DriverRating (
    id serial PRIMARY KEY,
    skills INT NOT NULL,
    car_condition INT NOT NULL,
    regulations INT NOT NULL,
    driver_id INT NOT NULL,
    passing_id INT NOT NULL
);
CREATE TABLE data.Driver (
    id serial PRIMARY KEY,
    photo BYTEA,
    user_id INT UNIQUE NOT NULL
);
CREATE TABLE data.DriverCar (
    id serial PRIMARY KEY,
    plate_number VARCHAR(25),
    color VARCHAR(25),
    car_id INT NOT NULL,
    driver_id INT NOT NULL
);
CREATE TABLE data.Car (
    id serial PRIMARY KEY,
    brand VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    car_type_id INT NOT NULL
);
CREATE TABLE data.CarType (
    id serial PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);
CREATE TABLE data.Passing (
    id serial PRIMARY KEY,
    distance DECIMAL NOT NULL,
    driver_id INT NOT NULL,
    passenger_id INT NOT NULL,
    payment_id INT UNIQUE NOT NULL,
    drivercar_id INT NOT NULL,
    pickup_adress_id INT NOT NULL,
    destynation_adrees_id INT NOT NULL
);
CREATE TABLE data.Payment_type (
    id serial PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);
CREATE TABLE data.Payment (
    id serial PRIMARY KEY,
    m_value MONEY NOT NULL,
    payment_type_id INT NOT NULL
);
CREATE TABLE data.Adress (
    id serial PRIMARY KEY,
    street VARCHAR(100) NOT NULL,
    building VARCHAR(25),
    appartment VARCHAR(25),
    post_code VARCHAR(25) NOT NULL,
    city VARCHAR(25) NOT NULL,
    country VARCHAR(25) NOT NULL,
    range_id INT UNIQUE NOT NULL 
);
CREATE TABLE data.Range (
    id serial PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);


INSERT INTO
    data.User (id, name, surname, mail, phone_number)
VALUES
    ('1', 'MIKOLAJ', 'JAKUBEK', 'jakubekmikolaj@gmail.com', '604347565'),
    ('2', 'NIKOLAJ', 'KADLUBEK', 'jakuFWETWEmikolaj@gmail.com', '604555565'),
    ('3', 'JAKUB', 'KOKO', 'jakubekmikolaj@gmail.com', '604347444'),
    ('4', 'WLADEK', 'KLOKO', 'jakubekmikolaj@gmail.com', '604787565'),
    ('5', 'SPADEK', 'LOKKO', 'jakubekmikolaj@gmail.com', '604989565');


INSERT INTO
    data.Passenger (id, user_id, prefer_payment)
VALUES
    ('1', '1', 'CARD'),
    ('2', '2', 'CARD'),
    ('3', '3', 'CASH'),
    ('4', '4', 'CARD'),
    ('5', '5', 'CASH');

INSERT INTO
    data.PassengrtRating (id, behavior, on_time, passenger_id, passing)
VALUES
    ('1', '4', '5', '1', '1'),
    ('2', '6', '5', '2', '2'),
    ('3', '4', '2', '3', '3'),
    ('4', '4', '4', '4', '4'),
    ('5', '1', '5', '5', '5');

INSERT INTO
    data.DriverRating (id, skills, car_condition, regulations, driver_id, passing_id)
VALUES
    ('1', '4', '5', '1', '1', '1'),
    ('2', '6', '5', '2', '2', '2'),
    ('3', '4', '2', '3', '3', '3'),
    ('4', '4', '4', '4', '4', '4'),
    ('5', '1', '5', '5', '5', '5');



INSERT INTO
    data.Driver (id, photo, user_id)
VALUES
    ('1', '1.JPG', '1'),
    ('2', '2.JPG', '2'),
    ('3', '3.JPG', '3'),
    ('4', '4.JPG', '4'),
    ('5', '5.JPG', '5');


INSERT INTO
    data.DriverCar (id, plate_number, color, car_id, driver_id)
VALUES
    ('1', 'NE2551J', 'RED', '1', '1'),
    ('2', 'NE6661J', 'BLUE', '2', '2'),
    ('3', 'WW2551J', 'RED', '3', '3'),
    ('4', 'GD2511J', 'BLACK', '4', '4'),
    ('5', 'NO2551J', 'BLACK', '5', '5');

INSERT INTO
    data.Car (id, brand, model, car_type_id)
VALUES
    ('1', 'SKODA', 'OCTAVIA', '1'),
    ('2', 'SKODA', 'FABIA', '2'),
    ('3', 'SKODA', 'FABIA', '3'),
    ('4', 'VOLKSWAGEN', 'PASSAT', '4'),
    ('5', 'BMW', '5_SERIES', '5');


INSERT INTO
    data.CarType (id, name)
VALUES
    ('1', 'SKODA'),
    ('2', 'SKODA'),
    ('3', 'SKODA'),
    ('4', 'VOLKSWAGEN'),
    ('5', 'BMW');


INSERT INTO
    data.Passing (id, distance, driver_id, passenger_id, payment_id, drivercar_id, pickup_adress_id, destynation_adrees_id)
VALUES
    ('1', '20', '1', '1', '1', '1', '1', '1'),
    ('2', '40', '2', '2', '2', '2', '2', '2'),
    ('3', '50', '3', '3', '3', '3', '3', '3'),
    ('4', '70', '4', '4', '4', '4', '4', '4'),
    ('5', '10', '5', '5', '5', '5', '5', '5');


INSERT INTO
    data.Payment_type (id, name)
VALUES
    ('1', 'CARD'),
    ('2', 'CARD'),
    ('3', 'CASH'),
    ('4', 'Cash'),
    ('5', 'card');

INSERT INTO
    data.Payment (id, m_value, payment_type_id)
VALUES
    ('1', '20' , '1'),
    ('2', '30' , '2'),
    ('3', '44' , '3'),
    ('4', '21' , '4'),
    ('5', '12' , '5');