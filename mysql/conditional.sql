-- select case when 1 > 0 then 'true' else 'false' end;
-- select ifnull(null, 'yes');
-- select @var :=1, @var2; -- set @var = 1 としなくて良い
select * from users;
SELECT 
	IF(
		(SELECT @TAR := 1 IN (SELECT u.id FROM users u)) 
		&& 
		(@TAR = m.id), 
		m.name, 0
	  )
	FROM users m;