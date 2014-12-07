create table image(
  img_idx int auto_increment ,
  img_name varchar(300),
  img_ext varchar(10),
  primary key(img_idx)
);


select last_insert_id() from image

insert into image()values()