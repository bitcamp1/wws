CREATE TABLE IF NOT EXISTS `promotion` (
  `prom_idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '프로모션제목',
  `goods` varchar(100) NOT NULL COMMENT '프로모션상품',
  `message` varchar(100) NOT NULL COMMENT '프로모션문구',
  `rgst_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`prom_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 테이블의 덤프 데이터 `promotion`
--


insert into promotion 
	(
		title, 
		goods, 
		message
	)
	values
	(
		#title#,
		#goods#,
		#message#
	
	)
insert into promotion 
	(
		title, 
		goods, 
		message
	)
	values
	(
		'삼성TV이벤트',
		'32인치TV',
		'삼성 32인치 LED TV특가 구매를 신청합니다.'
	
	)
select * from promotion
	where prom_idx=#promIdx# 
		order by prom_idx desc
select count(*) from promotion
select * from promotion
	where prom_idx=#promIdx#
select * from promotion
	where title=#title#
update promotion 
	set
		title=#title#,
		goods=#goods#,
		message=#message#
		
	where prom_idx=#promIdx#
delete from promotion
	where prom_idx=#promIdx#
		
		
