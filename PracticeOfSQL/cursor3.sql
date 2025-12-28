declare 
	eid employees.emp_id%type;	
	cnt number;
begin
	eid:=&eid;
	update employees set salary=&New_Salary where emp_id=eid;
	if sql%notfound then
		dbms_output.put_line('Employee id ' || eid || ' does not exist ');
		dbms_output.put_line('Please try again!!');
	else
		cnt:=sql%rowcount;
		dbms_output.put_line(cnt || ' Records Updated');
	end if;
end;
/