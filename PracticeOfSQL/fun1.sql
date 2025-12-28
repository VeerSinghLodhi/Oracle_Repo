create or replace function fun1(num number) return number
is
	sq number;
begin
	sq:=num*num;
	return sq;
end;
/