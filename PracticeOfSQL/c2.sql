declare 
	cursor c1 is select department, count(*),avg(salary) from employees group by department;
	dept employees.department%type;
	cnt number;
	avgAmount number;
begin
	open c1;
		loop
			fetch c1 into dept, cnt,avgAmount;
			exit when c1%notfound;
			dbms_output.put_line('Department is  ' || dept || ' exists ' || cnt || ' Average Amount  ' || avgAmount);
			dbms_output.put_line('---------------------------------------------');
		end loop;
	close c1;
end;
/