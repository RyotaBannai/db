select u.*, FIND_IN_SET(u.id, '3,1,2') as orderby from users u 
 where u.id in (3,1,2)
 order by orderby;

select u.* from users u 
 where u.id in (3,1,2,2)
 order by field(id, 3,1,2,2);
 -- can't pick up duplicates