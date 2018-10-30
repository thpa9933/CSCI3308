create table new_enrollment (
id serial primary key,
department_name varchar not Null,
count integer not Null,
drop_count integer;
);

insert into new_enrollment(id, department_name, count, drop_count)values(1, 'CSC', 100, 20), (2,'CHM', 120, 5), (3, 'MTH', 90, 3), (4, 'EGR', 122, 12), (5, 'MTH', 68, 6), (7,'CSC', 100, 3), (8, 'CHM', 30, 1);
