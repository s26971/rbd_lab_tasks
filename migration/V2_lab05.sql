DELETE FROM obszar; --Usunięcie wszystkich danych z bazy

DROP TABLE  pasazer;
CREATE TABLE pasazer (
                         id serial PRIMARY KEY,
                         uzytkownik_id int UNIQUE ,
                         preferowanytyppłatności int); --Usunięcie i dodanie tabeli na nowo

alter table pasazer
    add constraint fk
        foreign key (uzytkownik_id) references uzytkownik
            on update cascade; --Dodanie klucza obcego

INSERT INTO
    pasazer (uzytkownik_id, preferowanytyppłatności)
VALUES
    ('1', '1'),
    ('2', '2'),
    ('3','1');

UPDATE pasazer SET preferowanytyppłatności = 3 WHERE id = 1;
UPDATE pasazer SET preferowanytyppłatności = 4 WHERE id = 2;

alter table pasazer
    add constraint fk_2
        foreign key (preferowanytyppłatności) references typplatnosci (id)
            on update cascade;

alter table kierowca
    add constraint "kier-user-fk"
        foreign key (uzytkownik_id) references uzytkownik;

UPDATE uzytkownik SET id = 5 WHERE id = 2;