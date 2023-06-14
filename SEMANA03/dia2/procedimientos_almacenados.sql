select * from tbl_alumno

use db_movilidad_escolar;

create procedure listar_alumnos()
begin
	select * from tbl_alumno;
end

call listar_alumnos();

create procedure ejemplo_bucle(in tope int,out suma int unsigned)
begin
	declare contador INT;
	set contador = 1;
	set suma = 0;
	
	bucle: loop
		if contador > tope then
			leave bucle;
		end if;
	
		set suma = suma + contador;
		set contador = + contador + 1;
	end loop;
	
end

call ejemplo_bucle(10,@resultado);
select @resultado;
