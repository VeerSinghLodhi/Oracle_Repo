declare
	a number;
begin
	a:=10;
	loop
		dbms_output.put_line(a);
		a:=a-1;
		exit when a<0;
	end loop;
end;
/