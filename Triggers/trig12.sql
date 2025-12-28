create or replace trigger trig12 before insert on products for each row
begin
	if :new.price<0 then
		:new.price:=abs(:new.price);
	end if;
end;
/