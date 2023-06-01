select * from alumnos;
select nombre,apellidos from alumnos;
select CONCAT(nombre," ",apellidos) as nombre_completo from alumnos;
select max(nota) from alumnos;
select min(nota) from alumnos;
select avg(nota) from alumnos;
select min(nota),max(nota),avg(nota) from alumnos;

-- selección de valores distintos
select distinct pais from alumnos;

-- filtro con comparación de igual
select * from alumnos
where pais = 'Peru';

-- filtro con operaciones numericas
select count(*) as total from alumnos
where nota > 10
and pais = 'Peru'

-- filtro con rango
select * from alumnos
where nota between 11 and 15;

-- filtro con like
select * from alumnos
where nombre like '%ana%'

-- expresiones regulares
select * from alumnos
where nombre regexp '^A'

-- filtro con like
select * from alumnos
where email like '%@gmail.com'

-- agrupación por pais
select pais,count(*) as total
from alumnos
group by pais
order by count(*) desc

-- agrupación con filtro
select pais,count(id) as total
from alumnos
group by pais
having total > 10
order by total desc

-- mostrar el promedio de nota de alumnos por pais ordenado de mayor a menor
select pais,avg(nota) as promedio
from alumnos
group by pais
having count(*) > 10
order by promedio desc

-- mostrar el numero de alumnos por pais que aprobaron el curso considerando que la nota aprobatoria es mayor a 13
select pais,count(id) as total
from alumnos
where nota > 13
group by pais

-- mostrar los alumnos de peru cuya nota es mayor al promedio de la nota total del pais
select * from alumnos where pais = 'Peru'
select avg(nota) from alumnos where pais = 'Peru'
-- subconsultas

select * from alumnos where pais = 'Peru'
and nota > (select avg(nota) from alumnos where pais = 'Peru')

-- subconsultas en columnas y filtros
select nombre,nota,(select avg(nota) from alumnos where pais = 'Peru') as promedio,
(nota - (select avg(nota) from alumnos where pais = 'Peru')) as diferencia
from alumnos
where pais = 'Peru'
and nota > (select avg(nota) from alumnos where pais = 'Peru') 

-- subconsultas con group by 
select pais,count(id) as total
from alumnos
where nota > (select avg(alu_avg.nota) from alumnos alu_avg where alu_avg.pais = pais)
group by pais
order by total desc

-- insert
insert into alumnos(nombre,apellidos,email,pais,nota)
values ('César','Mayta','cesarmayta@gmail.com','Peru',20);

insert into alumnos(nombre,apellidos,email,pais,nota)
values 
('Jose','Luna','jose@hotmail.com','Peru',15),
('Claudia','Martinez','jose@hotmail.com','Peru',11),
('Raul','Soto','jose@hotmail.com','Peru',12);

-- update
update alumnos
set id = 1001
where email = 'cesarmayta@gmail.com'

update alumnos
set id = 1002
where pais = 'Peru' and nombre = 'Jose';

update alumnos
set id = 1003
where pais = 'Peru' and nombre = 'Claudia';

update alumnos
set id = 1004
where pais = 'Peru' and nombre = 'Raul';



select * from alumnos where pais = 'Peru'

-- delete 

delete from alumnos
where id = 1004

-- truncate table alumnos;



