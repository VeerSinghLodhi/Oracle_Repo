create or replace procedure assign_procedure2(dept in number,avg_salary out number,highest_salary out number,payroll out number)
as
begin
	select avg(salary),max(salary),sum(salary) into avg_salary, highest_salary,payroll from emp where dept_id=dept;
end;	
/	