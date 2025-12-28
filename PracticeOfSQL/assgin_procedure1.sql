create or replace procedure emp_procedure(empid in number,emp_salary out number,grade out varchar)
as
	department_id number;
	avg_salary number;
	min_salary number;
begin
	select dept_id,salary into department_id, emp_salary from emp where emp_id=empid;
	select avg(salary) ,min(salary) into avg_salary,min_salary from emp where dept_id=department_id;
	if  emp_salary>avg_salary then
		grade:='HIGH';
	elsif emp_salary<avg_salary and min_salary<emp_salary then
		grade:='MEDIUM';
	else
		grade:='LOW';
	end if;
end;
/