create or replace function fun1(a number) return number
is
	sq number;
begin
	sq:=a*a;
	return sq;
end;
/

