declare 
	sid students.srno%type;
	name students.name%type;
begin
	for sid in 101..104
	loop
		select name into name from students where srno=sid;
		dbms_output.put_line('Name is ' || name);
	end loop;
end;
/