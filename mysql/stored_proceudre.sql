DROP PROCEDURE IF EXISTS myRoutine;
delimiter //
create procedure myRoutine (INOUT Nr INT)
BEGIN
	declare Res1 INT;
	declare Res2 INT;
	set Res1 = Nr;
	set Res2 = (select Nr+5);
	select Res1, Res2;
	-- select Nr INTO Nr;
END
//

delimiter ;
set @output = 100;
CALL myRoutine(@output);
-- select @output;
