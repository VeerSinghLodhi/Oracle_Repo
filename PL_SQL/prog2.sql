declare 
	a number;
	b number;
	c number;
begin
	a:=&num1;
	b:=&num2;
	c:=a+b;
	dbms_output.put_line('Sum is ' || c);

end;
/