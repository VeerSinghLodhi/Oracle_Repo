declare
	sid students.srno%type;
	sname students.name%type;
begin
	for sid in 101..104
	loop
		select name into sname from students where srno=sid;
		dbms_output.put_line('Name is ' || sname);
	end loop;
end;
/