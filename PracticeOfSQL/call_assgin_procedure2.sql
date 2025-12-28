declare 
	dept emp.dept_id%type;
	avg_salary number;
	highest_salary number;
	payroll number;
begin
	dept:=&dept;
	assign_procedure2(dept,avg_salary,highest_salary,payroll);
	dbms_output.put_line('Average Salary is ' || avg_salary);
	dbms_output.put_line('Highest Salary is ' || highest_salary);
	dbms_output.put_line('Payroll is ' || payroll);
end;
/