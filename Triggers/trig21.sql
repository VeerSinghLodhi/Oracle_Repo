create or replace trigger trig21 instead of insert on empview for each row
begin
	dbms_output.put_line('Instead of trigger');
end;
/
