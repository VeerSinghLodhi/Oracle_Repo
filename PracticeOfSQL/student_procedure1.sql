create or replace procedure calculate_result(sid in number,average out number,result out varchar , performance out varchar)
as 
	cursor c1 is select * from marks where student_id = sid;
	sum_marks number;
	cnt number;
	studata c1%rowtype;
begin
	sum_marks:=0;
	cnt:=0;
	result:='PASS';
	open c1;
		loop
			fetch c1 into studata;
			exit when c1%notfound;
			sum_marks:=sum_marks+studata.marks;
			cnt:=cnt+1;
			if studata.marks<40 then
				result:='FAIL';
			end if;
		end loop;
	close c1;
	average:=sum_marks/cnt;
	if average >=75 then
		performance:='EXCELLENT';
	elsif average>=60 and average<75 then
		performance:='GOOD';
	else
		performance:='AVERAGE';
	end if;
end;
/