create or replace function fun3(cid number) return number
is
	retdate date;
	days number;
begin
	select add_months(doj,120) into retdate from customers where cno=cid;
	select retdate-doj into days from customers where cno=cid;
	return days;
end;
/