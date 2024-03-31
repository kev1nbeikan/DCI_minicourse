-- изменения типа имени в person >>
ALTER TABLE person
    ALTER COLUMN name TYPE VARCHAR(80);
-- << изменения типа имени в person


-- удлаение CONSTRAINT у ретинга  >>

ALTER TABLE pizzeria
    DROP CONSTRAINT ch_rating;

-- изменения типа имени в person >>

-- добавление новой колонки  >>

ALTER TABLE menu
    ADD COLUMN pizzeria_name varchar NOT NULL default ''

-- изменения типа имени в person >>





