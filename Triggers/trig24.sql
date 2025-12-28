create or replace trigger trig24 instead of  insert on insview for each row
declare
	bal number;
	excess number;
begin
	select balance into bal from loan_master where acno=:new.acno;
	if bal>0 then
		if :new.amt>bal then
			update loan_master set balance=0 	
			where acno=:new.acno;	
			excess:=:new.amt-bal;
			dbms_output.put_line('Excess amount ' || excess || ' returned');
			insert into installments values(:new.acno,bal);
		else
			update loan_master set balance=balance-:new.amt
			where acno=:new.acno;
			insert into installments values(:new.acno,:new.amt);
		end if;
	else
		dbms_output.put_line('Load already paid');
	end if;
	
end;
/