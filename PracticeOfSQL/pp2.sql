declare
	pno emp.srno%type;
	pdata emp%rowtype;
begin
	dbms_output.put_line('-------Employee Details--------');
	pno:=10;

	loop
		exit when pno>50;
		select * into pdata from emp where srno=pno;
		dbms_output.put_line('Employee Id ' || pno);
		dbms_output.put_line('Name is ' || pdata.name);
		dbms_output.put_line('City is ' || pdata.city);
		dbms_output.put_line('DOJ is ' || pdata.doj);
		dbms_output.put_line('-------------------------------------------');	
		pno:=pno+10;

	end loop;
end;
/