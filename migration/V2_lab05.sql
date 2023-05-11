ALTER TABLE data.passenger
ADD FOREIGN KEY (user_id) REFERENCES data.user(id);

ALTER TABLE data.passenger
ADD FOREIGN KEY (prefer_payment) REFERENCES data.payment_type(id);

ALTER TABLE data.driverrating
ADD FOREIGN KEY (driver_id) REFERENCES data.driver(id);

ALTER TABLE data.driver
ADD FOREIGN KEY (user_id) REFERENCES data.user(id);

ALTER TABLE data.drivercar
ADD FOREIGN KEY (driver_id) REFERENCES data.driver(id);

ALTER TABLE data.drivercar
ADD FOREIGN KEY (car_id) REFERENCES data.car(id);

ALTER TABLE data.car
ADD FOREIGN KEY (car_type_id) REFERENCES data.cartype(id);

ALTER TABLE data.passing
ADD FOREIGN KEY (driver_id) REFERENCES data.driver(id);

ALTER TABLE data.passing
ADD FOREIGN KEY (payment_id) REFERENCES data.payment(id);

ALTER TABLE data.passing
ADD FOREIGN KEY (pickup_adress_id) REFERENCES data.adress(id);

ALTER TABLE data.passing
ADD FOREIGN KEY (destynation_adrees_id) REFERENCES data.adress(id);

ALTER TABLE data.payment
ADD FOREIGN KEY (payment_type_id) REFERENCES data.payment_type(id);

-- WARTOŚCI KTORE NIE PRZESZŁY --

ALTER TABLE data.passengrtrating
ADD FOREIGN KEY (passenger_id) REFERENCES data.passenger(id);

ALTER TABLE data.passing
ADD FOREIGN KEY (passenger_id) REFERENCES data.passenger(id);

ALTER TABLE data.adress
ADD FOREIGN KEY (range_id) REFERENCES data.range(id);

---------------------------------