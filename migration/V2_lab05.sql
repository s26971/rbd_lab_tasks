DELETE FROM obszar; --Usunięcie wszystkich danych z bazy

DROP TABLE  pasazer;
CREATE TABLE pasazer (
    id serial PRIMARY KEY,
  uzytkownik_id int UNIQUE ,
  preferowanytyppłatności int); --Usunięcie i dodanie tabeli na nowo

ALTER TABLE pasazer
    ADD CONSTRAINT fk
        foregin KEY (uzytkownik_id) REFERENCES uzytkownik (id)
        ON UPDATE CASCADE; --Dodanie klucza obcego

INSERT INTO 
  pasażer (uzytkownik_id, preferowanytyppłatności)
VALUES
  ('1', '1'),
  ('2', '2'),
  ('3','1');

UPDATE pasazer SET preferowanytyppłatności = 3 WHERE id = 1;
UPDATE pasazer SET preferowanytyppłatności = 4 WHERE id = 2;

ALTER TABLE pasazer
    ADD CONSTRAINT fk_2
        FOREGIN KEY (preferowanytyppłatności) REFERENCES typplatności (id)
        ON UPDATE CASCADE;

ALTER TABLE kierowca
    ADD CONSTRAINT "kier-user-fk"
        FOREGIN KEY (uzytkownik_id) REFERENCES uzytkownik;

        UPDATE uzytkownik SET id = 5 WHERE id = 2;