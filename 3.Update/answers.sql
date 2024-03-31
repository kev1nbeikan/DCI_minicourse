-----------------------------------
-- добавление имени пиццерии >>

UPDATE menu
SET pizzeria_name = pizzeria.name
FROM pizzeria
WHERE menu.pizzeria_id = pizzeria.id;


--<< добавление имени пиццерии
-----------------------------------