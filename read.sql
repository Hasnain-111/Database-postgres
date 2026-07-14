create table courses(
	id serial primary key,
	title varchar(100) not null,
	fee numeric(8,2) not null check(fee>=0),
	instructor_id int references users(id) on delete set null,
	created_at timestamp default now()
);

--select a entire table (read)
select *from users;

--select specific field
select name,email,role from users;
select *from users where role= 'professor';

--formatting using alies
select name as "full name" ,email as "Address" from users;


--finding unique or distinct value
select distinct role from users;