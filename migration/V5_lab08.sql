--Skrypt1

BEGIN TRANSACTION;

INSERT INTO
    data.car (id,brand, model, car_type_id)
VALUES
  (6,'BMW','E46',1);

INSERT INTO
    data.car (id,brand, model, car_type_id)
VALUES
  (7,'Volkswagen','Golf',2);
INSERT INTO
    data.car (id,brand, model, car_type_id)
VALUES
  (8,'Dacia','Duster',3);
INSERT INTO
    data.car (id,brand, model, car_type_id)
VALUES
  (9,'Honda','Civic',4);
INSERT INTO
    data.car (id,brand, model, car_type_id)
VALUES
  (10,'Kaudi','A8',5);

COMMIT;

--Skrypt2

BEGIN TRANSACTION;

insert into data.range (id, name) values (11, 'Lane');
insert into data.range (id, name) values (12, 'Street');
insert into data.range (id, name) values (13, 'Street');
insert into data.range (id, name) values (14, 'Pass');
insert into data.range (id, name) values (15, 'Alley');
insert into data.range (id, name) values (16, 'Point');
insert into data.range (id, name) values (17, 'Center');
insert into data.range (id, name) values (18, 'Parkway');
insert into data.range (id, name) values (19, 'Drive');
insert into data.range (id, name) values (20, 'Parkway');
insert into data.range (id, name) values (21, 'Center');
insert into data.range (id, name) values (22, 'Avenue');
insert into data.range (id, name) values (23, 'Center');
insert into data.range (id, name) values (24, 'Circle');
insert into data.range (id, name) values (25, 'Circle');
insert into data.range (id, name) values (26, 'Trail');
insert into data.range (id, name) values (27, 'Plaza');
insert into data.range (id, name) values (28, 'Crossing');
insert into data.range (id, name) values (29, 'Avenue');
insert into data.range (id, name) values (20, 'Point');

ROLLBACK;

-- Zad2
CREATE USER adam WITH PASSWORD 'Hasło';
GRANT SELECT,INSERT,UPDATE,DELETE on data.car to adam;

REVOKE INSERT,UPDATE,DELETE ON data.car FROM adam;