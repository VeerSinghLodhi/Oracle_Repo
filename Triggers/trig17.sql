create or replace trigger trig17 before update of m1  on exam for each row 
when(new.m1>100)
begin
	dbms_output.put_line('Marks can not be more than 100');
end;
/
