declare
	num1 number;
	sq number;
begin
	num1:=&num;
	for sq in 1..num1
	loop
		dbms_output.put_line('Square of ' || sq || ' is ' || sq*sq);
	end loop;
end;
/