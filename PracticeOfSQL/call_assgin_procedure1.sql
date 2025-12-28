declare 
	emp_id emp.emp_id%type;
	salary emp.salary%type;
	grade varchar(10);
begin
	emp_id:=&emp;
	emp_procedure(emp_id,salary,grade);
	dbms_output.put_line('Department Average Salary is '|| salary);
	dbms_output.put_line('Grade '|| grade);
end;
/