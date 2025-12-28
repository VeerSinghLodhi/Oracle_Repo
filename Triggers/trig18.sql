create or replace trigger trig18 before update of salary on emp10 for each row
when(new.salary<old.salary)
begin
	raise_application_error(-20001,'Can not be decreased');
end;
/
