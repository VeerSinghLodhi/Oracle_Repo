declare
	trno trains.tno%type;
	tdata trains%rowtype;
	rid reservation.pnrno%type;
	rdata reservation%rowtype;
begin
	trno:=&train_no;
	select * into rdata from reservation where tno=trno;
	dbms_output.put_line('PNRNO '|| rdata.pnrno);
	dbms_output.put_line('P Name ' || rdata.pname);
	dbms_output.put_line('----------------------------');
end;
/