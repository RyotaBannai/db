SELECT u.* FROM users u
join ( 
	select 1 as id, 1 as sortby 
	union all select 2 as id, 2 as sortby 
	union all select 1 as id, 3 as sortby 
	) arr on arr.id = u.id
	order by arr.sortby;