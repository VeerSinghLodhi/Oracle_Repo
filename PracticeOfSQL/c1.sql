declare
	cursor c1 is select * from emp;
	emp_data emp%rowtype;
begin
	open c1;
	loop
		fetch c1 into emp_data;
		exit when c1%notfound;
		dbms_output.put_line('Srno ' || emp_data.srno);
		dbms_output.put_line('Name ' || emp_data.name);
		dbms_output.put_line('-----------------------------------');
	end loop;
	close c1;
		
end;
/