create or replace trigger trig23 instead of insert on admview for each row
declare
	rseats course_master.rem_seats%type;
begin
	select rem_seats into rseats from course_master where
	ccd=:new.ccd;
	if rseats>0 then
		update course_master set rem_seats=rem_seats-1
		where ccd=:new.ccd;
		insert into adm_master values(:new.admno,:new.name,:new.ccd);
		dbms_output.put_line('Admission Granted !! Seats Updated');
	else
		dbms_output.put_line('No seats left');
	end if;
end;
/