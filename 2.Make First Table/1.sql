create table person
(
    id      bigint primary key,
    name    varchar not null,
    age     integer not null default 10,
    gender  varchar          default 'female' not null,
    address varchar
);

insert into person
values (1, 'Anna', 16, 'female', 'Moscow');
insert into person
values (2, 'Andrey', 21, 'male', 'Moscow');
insert into person
values (3, 'Kate', 33, 'female', 'Kazan');
insert into person
values (4, 'Denis', 13, 'male', 'Kazan');
insert into person
values (5, 'Elvira', 45, 'female', 'Kazan');
insert into person
values (6, 'Irina', 21, 'female', 'Saint-Petersburg');
insert into person
values (7, 'Peter', 24, 'male', 'Saint-Petersburg');
insert into person
values (8, 'Nataly', 30, 'female', 'Novosibirsk');
insert into person
values (9, 'Dmitriy', 18, 'male', 'Samara');


-- Создание  pizzeria >>


-- << Создание таблицы pizzeria

create table person_visits
(
    id          bigint primary key,
    person_id   bigint not null,
    pizzeria_id bigint not null,
    visit_date  date   not null default current_date,
    constraint uk_person_visits unique (person_id, pizzeria_id, visit_date),
    constraint fk_person_visits_person_id foreign key (person_id) references person (id),
    constraint fk_person_visits_pizzeria_id foreign key (pizzeria_id) references pizzeria (id)
);


create table menu
(
    id          bigint primary key,
    pizzeria_id bigint  not null,
    pizza_name  varchar not null,
    price       numeric not null default 1,
    constraint fk_menu_pizzeria_id foreign key (pizzeria_id) references pizzeria (id)
);

