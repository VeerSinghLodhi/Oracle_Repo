declare
	sid students.srno%type;
	student students%rowtype;
begin
	for sid in 101..105
	loop	
		select * into student from students where srno=sid;
		dbms_output.put_line('Student Details:');
		dbms_output.put_line('Roll no. ' || student.srno);
		dbms_output.put_line('Name is ' || student.name);
		dbms_output.put_line('-----------------------------------');
	end loop;
end;
/