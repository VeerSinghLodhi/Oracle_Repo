create or replace trigger trig16  before update of m1 on exam for each row
begin
	dbms_output.put_line('Col M1 updated');
end;
/
