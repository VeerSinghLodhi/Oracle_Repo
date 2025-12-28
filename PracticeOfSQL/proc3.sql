declare 
	num number;
	sq number;
begin
	num:=&num;
	p2(num,sq);
	dbms_output.put_line('Square is '  || sq);
end;
/