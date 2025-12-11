declare
	cursor c1 is select * from employees;
	empdata c1%rowtype;
begin
	open c1;
		loop
			fetch c1 into empdata;
			exit when c1%notfound;
			dbms_output.put_line('Name is '|| empdata.emp_name);
			dbms_output.put_line('Salary is '|| empdata.salary);
			dbms_output.put_line('--------------------------------');
		end loop;
	close c1;	
end;
/