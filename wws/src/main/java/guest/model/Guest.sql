CREATE TABLE IF NOT EXISTS `guest` (
  `gst_idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '고객이름',
  `phone` varchar(20) DEFAULT NULL COMMENT '전화번호',
  `birth` varchar(20) DEFAULT NULL COMMENT '생년월일',
  `gender` varchar(5) DEFAULT NULL COMMENT '성별',
  `info` varchar(200) DEFAULT NULL COMMENT '고객정보',
  `provide` varchar(100) DEFAULT NULL COMMENT '사은품',
  `addr` varchar(100) DEFAULT NULL COMMENT '주소',
  `cust_id` varchar(50) DEFAULT NULL COMMENT 'FK',
  `rgst_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`gst_idx`),
  KEY `setfk_cust_id` (`cust_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 테이블의 덤프 데이터 `guest`
--
insert into guest
	(
		name,
		phone,
		birth,
		gender,
		info,
		provide,
		cust_id
	)
	value
	(
		#name#,
		#phone#,
		#birth#,
		#gender#,
		#info#,
		#provide#,
		#cust_id#
	)

insert into guest
	(
		name,
		phone,
		birth,
		gender,
		info,
		provide,
		cust_id
	)
	value
	(
		'이순신',
		'02-9999-8888',
		'1980-08-08',
		'남',
		'동원 부장',
		'삼성TV',
		'dongwon'
	)	
select * from guest
	order by gst_idx desc
select count(*) from guest;
select * from guest
where name=#name#

update guest set phone=031-2323-2323 where guest_idx=3; 

delete guest where guest_idx=2;
