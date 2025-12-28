create or replace function fun3(empid number)
return number
is
	sal number;
begin
	select salary into sal from employees where emp_id = empid;
	return sal;
end;
/