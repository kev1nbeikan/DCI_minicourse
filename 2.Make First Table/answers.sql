-- Добавление нового поля pizzeria insert into select >>


insert into pizzeria(id, name)
SELECT max(id) + 1, 'Сheeze pizza'
FROM pizzeria
LIMIT 1;

-- <<  Добавление нового поля pizzeria


-- Добавление нового поля pizzeria insert into >>

insert into pizzeria(id, name)
values (6, 'Bebra');

-- <<  Добавление нового поля pizzeria


-- Создание  pizzeria >>

create table pizzeria
(
    id     bigint primary key,
    name   varchar not null,
    rating numeric not null default 0
);
-- << Создание таблицы pizzeria


-- Добавление kai pizza in  DoDo pizzeria >>

INSERT INTO menu(id, pizzeria_id, pizza_name, price)
VALUES ((SELECT max(id) FROM menu) + 1,
        (SELECT id FROM pizzeria WHERE pizzeria.name = 'DoDo Pizza'),
        'kai pizza',
        700)


-- << Добавление kai pizza in  DoDo pizzeria
