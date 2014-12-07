create table mobile(
  mb_idx int auto_increment ,
  model varchar(30) not null comment '모델',
  company varchar(20) comment '제조사',
  mobile varchar(30) comment '단말기',
  mb_price int default '0' comment '가격',
  install_month int default '0' comment '할부개월',
  rgst_date timestamp default now(),
	m_img varchar(200),
	d_img varchar(200),
	dtl_url varchar(300),
	cust_id varchar(50),
  primary key(mb_idx),
  unique key(model)
)engine=innodb;

insert into mobile 
	(
		company, 
		mobile,
		model,
		price,
		dtl_url
	)
values
	(
		#company#, 
		#mobile#,
		#model#,
		#price#,
		#dtl_url#
	)
	


select * from 
	order by mb_idx desc
select * from mobile
	where mb_idx=#mbIdx#
select count(*) from mobile
select * from mobile
	where company=#company#

update mobile 
	set
		company=#company#,
		mobile=#mobile#,
		model=#model#,
		price=#prie#
	where mb_idx=#mbIdx#
delete from mobile
	where mb_idx=#mbIdx#
	
	
CREATE TABLE IF NOT EXISTS `mobile` (
  `mb_idx` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(30) NOT NULL COMMENT '모델',
  `company` varchar(20) DEFAULT NULL COMMENT '제조사',
  `mobile` varchar(30) DEFAULT NULL COMMENT '단말기',
  `price` int(11) DEFAULT '0' COMMENT '가격',
  `install_month` int(11) DEFAULT '0' COMMENT '할부개월',
  `main_img_idx` int(11) DEFAULT '0',
  `dtl_img_idx` int(11) DEFAULT '0',
  `rgst_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cust_id` varchar(50) DEFAULT NULL,
  `dtl_url` varchar(300) DEFAULT NULL,
  `m_img` varchar(300) DEFAULT NULL,
  `d_img` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`mb_idx`),
  UNIQUE KEY `model` (`model`,`cust_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 테이블의 덤프 데이터 `mobile`
--

INSERT INTO `mobile` (`mb_idx`, `model`, `company`, `mobile`, `price`, `install_month`, `main_img_idx`, `dtl_img_idx`, `rgst_date`, `cust_id`, `dtl_url`, `m_img`, `d_img`) VALUES
(1, 'IPHONE5_16G', '애플', '아이폰', 814000, 0, 0, 0, '0000-00-00 00:00:00', '', 'http://www.apple.com/kr/iphone/', 'IPHONE5_16G.jpg', ''),
(2, 'IM-A870S', '팬택', '베가아이언', 829400, 0, 0, 0, '0000-00-00 00:00:00', '', 'http://www.ivega.co.kr/prt/productInfo.do?intprdseq=1359', 'IM-A870S.jpg', ''),
(3, 'LG-F240S', 'LG', 'G pro', 858000, 0, 0, 0, '0000-00-00 00:00:00', '', 'http://www.lgmobile.co.kr/event/optimusGpro/index.html', 'LG-F240S.jpg', ''),
(4, 'LG-F320S', 'LG', 'G2', 954800, 0, 0, 0, '0000-00-00 00:00:00', '', 'http://www.lgmobile.co.kr/microsite/LGG2/index.jsp', 'LG-F320S.jpg', ''),
(5, 'SHV-E210S_16G', '삼성', '갤2', 699600, 0, 0, 0, '0000-00-00 00:00:00', '', 'http://www.samsung.com/sec/consumer/mobile-phone/mobile-phone/skt/SHV-E210SMB1SC', 'SHV-E210S_16G.jpg', ''),
(6, 'SHV-E250S_32G', '삼성', '노트2', 990000, 0, 0, 0, '0000-00-00 00:00:00', '', 'http://www.samsung.com/sec/consumer/mobile-phone/mobile-phone/skt/SHV-E250SRW1SC', 'SHV-E250S_32G.jpg', ''),
(7, 'SHV-E300S_32G', '삼성', '갤3', 899800, 0, 0, 0, '0000-00-00 00:00:00', '', 'http://www.samsung.com/sec/consumer/mobile-phone/mobile-phone/skt/SHV-E210SMB1SC', 'SHV-E300S_32G.jpg', ''),
(8, 'SHV-E330S_32G', '삼성', '갤4 LTE-A', 954800, 0, 0, 0, '0000-00-00 00:00:00', '', 'http://www.samsung.com/sec/consumer/mobile-phone/mobile-phone/skt/SHV-E330SZB1SC', 'SHV-E330S_32G.jpg', '');
