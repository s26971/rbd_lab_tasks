CREATE VIEW Marki AS
  SELECT brand FROM data.car
CREATE INDEX idx ON data.driverrating  (skills);

CREATE PROCEDURE  add_hybrid_column()
LANGUAGE plpgsql
AS $$
BEGIN
  ALTER TABLE data.passengrtrating ADD COLUMN drunken BOOL;
  UPDATE data.passengrtrating SET drunken = true WHERE behavior < 3 ;
END;
$$

CREATE OR REPLACE FUNCTION get_payment(value1 INTEGER, value2 INTEGER)
RETURNS TABLE (name TEXT, value MONEY)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY SELECT p.name::text, p.value::money FROM data.payment p
                 WHERE EXTRACT(YEAR FROM p.value) BETWEEN value1 AND value2;
END;
$$