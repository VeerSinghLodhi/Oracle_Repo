declare
	sid marks.student_id%type;
	avg_marks number;
	result varchar(20);
	performance varchar(20);
begin
	sid:=&student_id;
	calculate_result(sid,avg_marks,result,performance);
	dbms_output.put_line('Result : ' || result);
	dbms_output.put_line('Average Marks : ' || avg_marks);
	dbms_output.put_line('Performance : ' || performance);
end;
/