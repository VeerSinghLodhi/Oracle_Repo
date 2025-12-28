declare
	sid number;
	name varchar(20);
begin
	for sid in 101..104
	loop
		select name into name from students where srno=sid;
		dbms_output.put_line('Roll no. is ' || sid || ' Name is ' || name);
	end loop;

end;
/ 