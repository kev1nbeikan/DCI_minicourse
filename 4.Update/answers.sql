-----------------------------------
-- добавление имени пиццерии >>

UPDATE menu
SET pizzeria_name = pizzeria.name
FROM pizzeria
WHERE menu.pizzeria_id = pizzeria.id;


--<< добавление имени пиццерии
-----------------------------------


-----------------------------------
-- изменение person_order with ON CONFLICT >>

INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES (1,
        (SELECT id FROM person WHERE name = 'Anna'),
        (SELECT id FROM menu WHERE pizza_name = 'cheese pizza' AND price = 900 LIMIT 1),
        '2022-01-10'::date)
ON CONFLICT (id)
    DO UPDATE SET person_id  = excluded.person_id,
                  menu_id    = excluded.menu_id,
                  order_date = excluded.order_date;

-----------------------------------
-- << изменение person_order with merge

