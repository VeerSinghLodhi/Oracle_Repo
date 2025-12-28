declare
	sid students.srno%type;
	sname students.name%type;
begin
	sid:=&srno;
	select name into sname from students where srno=sid;
	dbms_output.put_line('Name is ' || sname);
exception
	when no_data_found then
		dbms_output.put_line('No Data Found!!');
	when too_many_rows then
		dbms_output.put_line('Too Many Row found!');
end;
/