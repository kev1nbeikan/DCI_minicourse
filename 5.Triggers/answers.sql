CREATE OR REPLACE FUNCTION emp_stamp() RETURNS trigger AS
$emp_stamp$
BEGIN
    INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
    VALUES ((SELECT max(id) FROM person_visits) + 1,
            new.person_id,
            (SELECT menu.pizzeria_id FROM menu WHERE new.menu_id = menu.id LIMIT 1),
            new.order_date);
    RETURN NEW;
END;
$emp_stamp$ LANGUAGE plpgsql;


CREATE TRIGGER trigger_name
    BEFORE INSERT
    ON person_order
    FOR EACH ROW
EXECUTE FUNCTION emp_stamp();


INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES ((SELECT max(id) + 1 FROM person_order),
        1,
        1,
        '2022-10-1'::date);