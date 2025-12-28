declare 
	cursor c1 is select * from employees;
	empdata employees%rowtype;
	bonus number;
begin
	open c1;
		loop
			fetch c1 into empdata;
			exit when c1%notfound;
			if empdata.salary<40000
			then
				bonus:=empdata.salary*15/100;
				dbms_output.put_line('Bonus is ' || bonus);
			elsif empdata.salary>40000 and empdata.salary<60000
			then
				bonus:=empdata.salary*10/100;
				dbms_output.put_line('Bonus is ' || bonus);
			elsif empdata.salary>60000 
			then
				bonus:=empdata.salary*5/100;
				dbms_output.put_line('Bonus is ' || bonus);
			end if;
		end loop;
	close c1;
end;
/