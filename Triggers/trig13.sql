create or replace trigger trig13 after insert on products for each row
begin
	insert into products3 values(:new.pno,:new.price);
end;
/
