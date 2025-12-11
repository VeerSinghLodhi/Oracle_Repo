declare 
	sid students.srno%type;
	subdata students%rowtype;
begin
	sid:=101;
	while sid<=104
	loop
		select * into subdata from students where srno=sid;
		dbms_output.put_line('Name is ' || subdata.name);
		dbms_output.put_line('-------------------------------');
		sid:=sid+1;
	end loop;
end;
/