create table agency(
	idx int auto_increment,
	id varchar(50),
	pw varchar(50),
	name varchar(50),
	firm varchar(10),
	grade varchar(10),
	cel varchar(15),
	email varchar(50),
	primary key (idx),
	unique key (id)
);

insert into agency(

	id,
	pw,
	name,
	firm,
	grade,
	cel,
	email
)values(
	'test',
	'test',
	'test',
	'test',
	'test',
	'010-3333-3333',
	'test@test.com'
);