create or replace trigger trig15 before update on exam for each row
begin
	dbms_output.put_line('Exam table updated');
end;
/
