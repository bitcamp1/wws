create table dtg_noti(
	dtg_noti_idx int auto_increment,
	dept varchar(10),
	pose varchar(10),
	name varchar(20),
	telnum varchar(15),
	email varchar(50),
	ttl varchar(30),
	regi_date timestamp not null default now(),
	content varchar(200),
	primary key(dtg_noti_idx)

);