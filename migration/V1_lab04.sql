CREATE DATABASE taxidb;

CREATE TABLE użytkownik (
  id serial PRIMARY KEY,
  imię varchar(100),
  nazwisko varchar(100),
  email varchar(100),
  nr_telefonu varchar(100)
);

CREATE TABLE pasażer (
  id serial PRIMARY KEY,
  użytkownik int UNIQUE ,
  preferowanytyppłatności int
);

CREATE TABLE ocenapasażera (
  id serial PRIMARY KEY,
  zachowanie int NOT NULL,
  terminowość int NOT NULL,
  pasażer_id NOT NULL,
  przejazd_id int UNIQUE NOT NULL
);

CREATE TABLE ocenakierowcy (
  id serial PRIMARY KEY,
  umiejetności int NOT NULL,
  stan samochodu int NOT NULL,
  przestrzeganie przepisów int NOT NULL,
  kierowca_id int NOT NULL,
  przejazd_id int UNIQUE NOT NULL
);

CREATE TABLE kierowca (
  id serial PRIMARY KEY,
  zdjęcie byte(),
  uzytkownik_id int UNIQUE NOT NULL
);

CREATE TABLE samochódkierowcy (
  id serial PRIMARY KEY,
  nr_rejestracyjny varchar(25),
  kolor varchar(25),
  samochód_id int NOT NULL,
  kierowca_id int NOT NULL
);

CREATE TABLE samochód (
  id serial PRIMARY KEY,
  marka varchar(100),
  model varchar(100),
  typpojazdu_id int NOT NULL
);

CREATE TABLE typpojazdu (
  id serial PRIMARY KEY,
  nazwa varchar(50) NOT NULL
);

CREATE TABLE address (
  id serial PRIMARY KEY,
  imię varchar(100),
  nazwisko varchar(100),
  email varchar(100),
  nr_telefonu varchar(100)
);

CREATE TABLE pojazd (
  id serial PRIMARY KEY,
  dystans double NOT NULL,
  kierowca_id int NOT NULL,
  pasażer_id int NOT NULL,
  płatność_id int UNIQUE NOT NULL,
  samochódKierowcy_id int NOT NULL,
  adres_odbior_id NOT NULL,
  adres_destynacja_id NOT NULL
);

CREATE TABLE typpłatności (
  id serial PRIMARY KEY,
  nazwa varchar(50) NOT NULL
);

CREATE TABLE płatność (
  id serial PRIMARY KEY,
  wartość money NOT NULL,
  typPłatności_id int NOT NULL
);

CREATE TABLE adres (
  id serial PRIMARY KEY,
  ulica varchar(100) NOT NULL,
  numer domu varchar(25),
  numer mieszkania varchar(25),
  kod pocztowy varchar(25) NOT NULL,
  miasto varchar(25) NOT NULL,
  kraj varchar(25) NOT NULL,
  obszar_id int UNIQUE NOT NULL
);

CREATE TABLE obszar (
  id serial PRIMARY KEY,
  nazwa varchar(255) NOT NULL
);

INSERT INTO 
  użytkownik (imię, nazwisko, email, nr_telefonu)
VALUES
  ('Tomasz', 'Zawadzki', 'asd@wp.pl', '123456789'),
  ('Darek', 'Długosz', 'ddlu@ic.pl', '162578237'),
  ('Kaya', 'Fisher', 'mrta@gb.com', '801136476');

INSERT INTO 
  pasażer (użytkownik_id, preferowanytyppłatności)
VALUES
  ('1', '1'),
  ('2', '2'),
  ('3','1');

INSERT INTO 
  ocenapasażera (zachowanie, terminowość, pasażer_id, przejazd_id)
VALUES
  ('4', '4', '1', '12'),
  ('3', '5', '2', '37'),
  ('5', '5', '3', '76');

INSERT INTO 
  ocenakierowcy (umiejetności, stan_samochodu, przestrzeganie_przepisów, kierowca_id, przejazd_id)
VALUES
  ('5', '5', '4', '3', '12'),
  ('3', '2', '4', '2', '37'),
  ('5', '5', '5', '1', '76');

INSERT INTO 
  kierowca (zdjęcie, uzytkownik_id)
VALUES
  ('1', '1'),
  ('1', '2'),
  ('1', '3');

INSERT INTO 
  samochódkierowcy (nr_rejestracyjny, kolor, samochód_id, kierowca_id)
VALUES
  ('GD 45315', 'Czarny', '1', '2'),
  ('KR 124GF', 'Srebrny', '2', '3'),
  ('WY 561VS', 'Zielony', '3', '1');

INSERT INTO 
  samochód (marka, model, typpojazdu_id)
VALUES
  ('Mercedes', 'Vito', '4'),
  ('Toyota', 'Prius', '2'),
  ('Seat', 'Ibiza', '3');

INSERT INTO 
  typpojazdu (nazwa)
VALUES
  ('Kombi'),
  ('Sedan'),
  ('Cupe'),
  ('Van');

INSERT INTO 
  pojazd (dystans, kierowca_id, pasażer_id, płatność_id, pamochódKierowcy_id, adres_odbioru, adres_destynacja_id)
VALUES
  ('34', '1', '1','2','6','5','20'),
  ('12', '8', '2','62','67','13','1'),
  ('8', '4', '9','22','67','24','9');

INSERT INTO 
  typpłatności (nazwa)
VALUES
  ('Karta'),
  ('Gotówka'),
  ('Voucher'),
  ('Bon');

INSERT INTO 
  płatność (wartość, typpłatności_id)
VALUES
  ('55','1'),
  ('120','2'),
  ('24','4');

INSERT INTO 
  adres (ulica, numer_domu, numer_mieszkania, kod_pocztowy, miasto, kraj, obzar_id)
VALUES
  ('Łąkowa', '60', '55', '80-100', 'Gdańsk','Polska','1'),
  ('Podwale Staromiejskie', '50', '51', '80-100', 'Gdańsk','Polska','2'),
  ('Targ Drzewny', '8', '2', '80-100', 'Gdańsk','Polska','2');

INSERT INTO 
  obszar (nazwa)
VALUES
  ('Śródmieście'),
  ('Letnica'),
  ('Łostowice');

SELECT * FROM obszar;
SELECT * FROM adres;
SELECT * FROM użytkownik;














