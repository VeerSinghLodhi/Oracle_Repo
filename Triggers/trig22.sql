create or replace trigger trig22 instead of delete on stockview for each row
begin
	if :old.qty>0 then
		dbms_output.put_line('Qty still in stock, can not delete');
	else
		delete from stockinhand where itemcd=:old.itemcd;
		dbms_output.put_line('Qty 0, product deleted');
	end if;
end;
/