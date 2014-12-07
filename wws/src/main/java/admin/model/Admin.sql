CREATE TABLE IF NOT EXISTS `admin` (
  `adm_idx` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(30) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `auth` int(11) DEFAULT '0',
  `rgst_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`adm_idx`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 테이블의 덤프 데이터 `admin`
--

INSERT INTO `admin` (`adm_idx`, `id`, `pwd`, `name`, `phone`, `email`, `auth`, `rgst_date`) VALUES
('admin', '1234', '김현석', '010-5008-5858', 'kim@test.com', 1);
INSERT INTO `admin` (`adm_idx`, `id`, `pwd`, `name`, `phone`, `email`, `auth`, `rgst_date`) VALUES
('wws001', '1234', '김민구', '010-9480-7557', 'kmg@test.com', 1);
insert into admin
	(
		id,
		pwd,
		name,
		phone,
		email,
		auth
	)
	vaules
	(
		#id#,
		#pwd#,
		#name#,
		#phone#,
		#email#,
		#auth#
	)
	


select * from admin 
	order by adm_idx desc
select count(*) from admin
select * from admin 
	where adm_idx=#admIdx#
select * from admin
	where name=#name#
update admin
	set
		id=#id#,
		name=#name#,
		pwd=#pwd#,
		phone=#phone#,
		email=#email#,
		auth=#auth#
	where adm_idx=#admIdx#
	
delete from admin 
	where adm_idx=#admIdx#
	
	
※	
INSERT INTO `admin` (`adm_idx`, `id`, `pwd`, `name`, `phone`, `email`, `auth`, `rgst_date`) VALUES
(5, 'admin', '1234', '김현석', '010-5008-5858', 'kim@test.com', 1, '2013-09-12 19:33:39');