declare
	age number;
begin
	age:=&age;
	if age>=18
	then
		dbms_output.put_line('You can vote');
	else
		dbms_output.put_line('You cannot vote');
	end if;
end;
/