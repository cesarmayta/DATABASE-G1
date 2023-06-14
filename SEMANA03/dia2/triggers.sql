-- trigger
create trigger tg_alumno_foto
before insert
on tbl_alumno for each row
begin
	set new.alumno_foto = 'https://e7.pngegg.com/pngimages/906/448/png-clipart-silhouette-person-person-with-helmut-animals-logo-thumbnail.png';
end;


insert into tbl_alumno(alumno_nombre,alumno_apellido)
values('Jose','Linares');

select * from tbl_alumno;