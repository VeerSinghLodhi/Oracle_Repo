declare
	num1 number;
	a number;
	sq number;
begin
	num1:=&num;
	for a in 1..num1
	loop
		dbms_output.put_line('Veer');
	end loop;

end;
/