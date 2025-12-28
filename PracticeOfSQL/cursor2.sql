declare 
	cursor c1(eid number) is select *from employees where emp_id=eid;
	empdata c1%rowtype;
begin
	open c1(&Eid);
			fetch c1 into empdata;
				if c1%notfound then
					dbms_output.put_line('No Data Found');	
				else
					dbms_output.put_line('Name is '|| empdata.emp_name);
					dbms_output.put_line('Salary is '|| empdata.salary);
				end if;
	close c1;
end;
/