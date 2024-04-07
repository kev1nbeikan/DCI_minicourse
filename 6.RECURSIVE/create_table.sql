CREATE TABLE geo
(
    id        int not null primary key,
    parent_id int references geo (id),
    name      varchar(1000)
);

INSERT INTO geo
    (id, parent_id, name)
VALUES (1, null, 'Планета Земля'),
       (2, 1, 'Континент Евразия'),
       (3, 2, 'Европа'),
       (4, 3, 'Россия'),
       (5, 4, 'Поволжский округ'),
       (6, 5, 'Татарстан'),
       (7, 6, 'Каазнь'),
       (8, 7, 'Вахитовский район'),
       (9, 8, '7 здание каи');


