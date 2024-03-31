# Сложный update

[Задание 1](#Задание1)


### Update Select:

_UPDATE_ в сочетании с _SELECT_ используется для обновления значений столбцов в одной таблице на основе значений из
другой таблицы. Например:

```sql
UPDATE table1
SET table1.column = table2.column
FROM table1
WHERE table1.column1 = table2.column2;
```

### Задание1

1. В [1.sql](1.sql) пропишите изменение всех пустых полей _menu.pizzeria_name_ на имена пиццерей в соответсвии с
   _pizzeria_id_
2. 