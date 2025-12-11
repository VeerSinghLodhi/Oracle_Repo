declare
	a number;
begin
	a:=1;
	while a<10
	loop
		dbms_output.put_line(a);
		a:=a+1;
	end loop;

end;
/