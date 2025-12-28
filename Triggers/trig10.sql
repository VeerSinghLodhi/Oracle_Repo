create or replace trigger trig10 before insert on football for each row
begin
	dbms_output.put_line(:new.tname);
	dbms_output.put_line('New Record Added. Thank You');
end;
/
