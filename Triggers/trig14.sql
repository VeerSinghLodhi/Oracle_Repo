create or replace trigger trig14 before delete on products for each row
begin
	dbms_output.put_line(:old.pno || ',,' || :old.price);
end;
/
