declare 
	num number;
begin
	num:=&num;
	if num>0
	then
		dbms_output.put_line('Number is Positive');
	elsif num<0
	then
		dbms_output.put_line('Number is Negative');
	else
		dbms_output.put_line('Number is Zero');
	end if;
end;
/