create or replace trigger trigg11 before insert on stock for each row
begin
	if :new.company is null then
		:new.company:='Lenovo';
	end if;
end;
/