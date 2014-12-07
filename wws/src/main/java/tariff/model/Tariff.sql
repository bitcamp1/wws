CREATE TABLE IF NOT EXISTS `tariff` (
  `tff_idx` int(11) NOT NULL,
  `tariff` varchar(30) DEFAULT NULL COMMENT '요금제',
  `tff_price` int(11) DEFAULT '0' COMMENT '가격',
  `tff_id` varchar(15) NOT NULL COMMENT 'lte69',
  `discount` int(11) DEFAULT '0' COMMENT '할인',
  `tff_month` int(11) DEFAULT '0' COMMENT '약정개월',
  `rgst_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tff_idx`),
  UNIQUE KEY `tff_id` (`tff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `tariff`
--

INSERT INTO `tariff` (`tff_idx`, `tariff`, `tff_price`, `tff_id`, `discount`, `tff_month`, `rgst_date`) VALUES
(52, 'LTE52', 52000, 'lte52', 14850, 0, '0000-00-00 00:00:00'),
(62, 'LTE62', 62000, 'lte62', 17600, 0, '0000-00-00 00:00:00'),
(65, 'LTE T', 65000, 'lte65', 18425, 0, '0000-00-00 00:00:00'),
(69, 'LTE69', 69000, 'lte69', 19250, 0, '0000-00-00 00:00:00'),
(75, 'LTE75', 75000, 'lte75', 20625, 0, '0000-00-00 00:00:00');

insert into tariff 
	(
		tff_idx,
		tariff, 
		tff_price, 
		tff_id,
		discount 
	)
values 
	(
		#tff_idx#,
		#tariff#, 
		#tff_price#, 
		#tff_id#, 
		#discount# 
	);


select * from tariff order by tff_idx desc;
select count(*) from tariff;
select * from tariff
	where tff_idx=#tffIdx#
select * from
	where tariff=#tariff#
update tariff
	set
		discount=#discount# 
	where tff_idx=#tffIdx#
delete from tariff
	where tff_idx=#tffIdx#

	