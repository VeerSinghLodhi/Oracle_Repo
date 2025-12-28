create or replace function fun2(cid number,yrs number) return date
is
	retdate date;
begin
	select add_months(doj,12*yrs) into retdate from customers where cno=cid;
	return retdate;
end;
/