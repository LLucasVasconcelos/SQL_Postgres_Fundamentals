--- query all rows nad columns in user
select * from auth.users;

--- query all rows and columns in service
select * from auth.service;

--- Sort by id, in this case descending
select * from auth.users
	order by auth.users.id_user desc;

--- Sort by price, in this case ascending
select * from auth.service
	order by auth.service.price asc;

--- Same as above but with a limit of two results
select * from autkh.service
	order by auth.service.price asc
	limit 2;

--- Same as above but with a limit of two results, and a offset 2 (Where the query starts)
select * from auth.service
	order by auth.service.price asc
	limit 2 offset 2;

--- Only what matches in both tables based on hte id_user (in this case)
select u.username,u.email,s.name,s.price
	from auth.users u
	inner join auth.service s on u.id_user = s.id_user;

--- Adding a condition just to send what i want, in this case where my id_user is equals 2
select u.username,u.email,s.name,s.price
	from auth.users u
	inner join auth.service s on u.id_user = s.id_user
	where s.id_user = 2;

--- Adding a second condition OR
select u.username,u.email,s.name,s.price
	from auth.users u
	inner join auth.service s on u.id_user = s.id_user
	where s.id_user = 2 or s.id_user =1;

--- Adding a second condition AND
select u.username,u.email,s.name,s.price
	from auth.users u
	inner join auth.service s on u.id_user = s.id_user
	where s.id_user = 2 and s.price = 50.0;

--- only the join is the inner join, this distinct above shows only one instance based on the columns mentioned
select distinct  u.username
	from auth.users u
	join auth.service s on s.id_user = u.id_user

--- Query only the things that has on the left table, that maches with the right table,
--- Also adds what have on the left but not in right
select u.username,u.email,s.name,s.price
	from auth.users u
	left join auth.service s on u.id_user = s.id_user;


--- Query only the things that has on the right table, that maches with the left table
--- Also adds what have on the right table but not in left table
select distinct  u.username,s.name,s.price
	from auth.users u
	right join auth.service s on s.id_user = u.id_user


--- Query all items also what is null, in both tables
select u.username, s.name, s.price,u.email
	from auth.users u
	full join auth.service s on s.id_user = u.id_user

