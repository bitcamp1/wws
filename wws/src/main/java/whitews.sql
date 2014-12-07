create table admin(
	adm_idx int auto_increment,
	id varchar(30) not null,
	pwd varchar(50) not null,
	name varchar(30) not null,
	phone varchar(20),
	email varchar(50),
	auth int default '0',
	rgst_date timestamp not null default now(),
	
	primary key(adm_idx),
	unique key(id)
)engine=innodb;


create table contract(
  ctr_idx int not null auto_increment ,
  join_type varchar(20) not null comment '가입유형',
  join_fee int default '0' comment '가입비',
  usim  int default '0' comment ' 유심',
  i_price int default '0' comment '할부원금',
  join_nm varchar(15) comment '가입형태 닉네임',
  rgst_date timestamp not null default now() comment '등록일',
  
  primary key(ctr_idx),
  unique key(join_type)
)engine=innodb;

create table customer(
	cust_idx int auto_increment,
	cust_id varchar(50) not null,
	model varchar(20),
	customer varchar(20),
	biz_no varchar(20)comment '사업자번호',
	phone varchar(20),
	manager varchar(20),
	mgr_tel varchar(20),
	mgr_cel varchar(20),
	mgr_email varchar(50),
	partner varchar(20),
	ptr_tel varchar(20),
	ptr_cel varchar(20),
	ptr_email varchar(20),
	posting int default 0 comment '게시여부',
	rgst_date timestamp not null default now(),
	primary key(cust_idx),
	unique key(cust_id)
)engine=innoDB;

create table guest (
  gst_idx int auto_increment ,
  name varchar(30) comment '고객이름',
  phone varchar(20) comment '전화번호',
  birth varchar(20) comment '생년월일',
  gender varchar(5) comment '성별',
  info varchar(200) comment '고객정보',
  provide varchar(100) comment '사은품',
  addr varchar(100) comment '주소',
  cust_id varchar(50) comment 'FK',
  rgst_date timestamp default now(),
  primary key(gst_idx)
)engine=innoDB;

create table installment(
	month int default 0 comment '할부개월',
	primary key (month)
	
)engine=innoDB;
create table mobile(
  mb_idx int auto_increment ,
  model varchar(30) not null comment '모델',
  company varchar(20) comment '제조사',
  mobile varchar(30) comment '단말기',
  price int default '0' comment '가격',
  install_month int default '0' comment '할부개월',
 main_img_idx int default '0',
 dtl_img_idx int default '0',
  rgst_date timestamp default now(),
  cust_id varchar(50),
  dtl_url varchar(300),
  m_img varchar(300),
  d_img varchar(300),
  primary key(mb_idx),
  unique key(model, cust_id)
)engine=innodb;

create table promotion(
	prom_idx int auto_increment,
	title varchar(100) not null comment '프로모션제목',
	goods varchar(100) not null comment '프로모션상품',
	message varchar(100) not null comment'프로모션문구',
	rgst_date timestamp not null default now(),
	primary key(prom_idx)
	
)engine=innodb;

create table tariff
	(
	  tff_idx int not null,
	  tariff varchar(30)  comment '요금제',
	  price int default '0' comment '가격',
	  tff_id varchar(15) not null comment 'lte69',
	  discount int default '0' comment '할인',
	  tff_month int default '0' comment '약정개월',
	  rgst_date timestamp not null default now(),
	  
	  primary key(tff_idx),
	  unique key(tff_id)
)engine=innodb;


create table tgate(
  tg_idx int auto_increment,
  tg_url varchar(200),
  cust_id varchar(30),
  model varchar(50),
  tff_id varchar(15) comment 'lte69',
  tff_idx int not null,
  join_type varchar(20),
  rgst_date timestamp  default now(),
  tariff varchar(30),
  total_price int,
  month int default 0
  primary key(tg_idx)
 
)engine=innodb;

	
alter table customer
	add constraint setfk_model foreign key(model) references Mobile(model)
	on update cascade
	on delete cascade;
	
alter table guest 
	add constraint setfk_cust_id foreign key (cust_id) references customer(cust_id)
	on update cascade
	on delete cascade;
	
alter table tgate   
  add constraint setfk_join_type foreign key (join_type) references contract(join_type)
  on update cascade
	on delete cascade;

alter table tgate
  add constraint setfk_cust foreign key (cust_id) references Customer(cust_id)
  on update cascade
	on delete cascade;
  
alter table tgate
  add constraint setfk_tariff foreign key (tff_id) references Tariff(tff_id)
  on update cascade
	on delete cascade;
alter table tgate
  add constraint setfk_model_tg foreign key (model) references Mobile(model)
  on update cascade
	on delete cascade;
 
alter table tgate
  add constraint fk_month foreign key (month) references Installment(month)
  on update cascade
	on delete cascade;	
	
  insert into admin (
	id, pwd, name, phone,email, auth
) values ('admin','1234','김현석','010-5008-5858','kim@test.com','1');























