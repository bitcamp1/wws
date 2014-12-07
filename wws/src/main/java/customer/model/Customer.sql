CREATE TABLE IF NOT EXISTS `customer` (
  `cust_idx` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` varchar(50) NOT NULL,
  `model` varchar(20) DEFAULT NULL,
  `customer` varchar(20) DEFAULT NULL,
  `biz_no` varchar(20) DEFAULT NULL COMMENT '사업자번호',
  `phone` varchar(20) DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL,
  `mgr_tel` varchar(20) DEFAULT NULL,
  `mgr_cel` varchar(20) DEFAULT NULL,
  `mgr_email` varchar(50) DEFAULT NULL,
  `partner` varchar(20) DEFAULT NULL,
  `ptr_tel` varchar(20) DEFAULT NULL,
  `ptr_cel` varchar(20) DEFAULT NULL,
  `ptr_email` varchar(20) DEFAULT NULL,
  `posting` int(11) DEFAULT '0' COMMENT '게시여부',
  `rgst_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cust_idx`),
  UNIQUE KEY `cust_id` (`cust_id`),
  KEY `setfk_model` (`model`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 테이블의 덤프 데이터 `customer`
--

INSERT INTO `customer` (`cust_idx`, `cust_id`, `model`, `customer`, `biz_no`, `phone`, `manager`, `mgr_tel`, `mgr_cel`, `mgr_email`, `partner`, `ptr_tel`, `ptr_cel`, `ptr_email`, `posting`, `rgst_date`) VALUES
(5, 'samsungpop', '', '삼성증권', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(6, 'kw', '', '한국노총', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(4, 'kkpc', '', '금호석유화학', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(7, 'wws', '', '화이트윙시스템', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(8, 'alrimee', '', '택시알리미', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(9, 'dongwon', '', '동원엔터프라이즈', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(10, 'nexentire', '', '넥센타이어', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(11, 'lx', '', '대한지적공사', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(12, 'gsretail', '', 'GS', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(13, 'youlchon', '', '율촌화학', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(14, 'arex', '', '인천공항철도', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(15, 'lumigarnet', '', '루미가넷', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(16, 'boryung', '', '보령제약', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(17, 'crown', '', '크라운제과', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(18, 'fujitsu', '', '한국후지쯔', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(19, 'hm', '', '현대자동차', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(20, 'hyundai-autoever', '', '현대오토에버', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(21, 'asiana', '', '금호아시아나', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00');



insert into customer
	(
		customer,
		cust_id,
		biz_no,
		phone,
		manager,
		mgr_tel,
		mgr_cel,
		mgr_email,
		partner,
		ptr_tel,
		ptr_cel,
		ptr_email,
		posting
	)
	values
	(
		#customer#,
		#cust_id#,
		#biz_no#,
		#phone#,
		#manager#,
		#mgrTel#,
		#mgrCel#,
		#mgrEmail#,
		#partner#,
		#ptrTel#,
		#ptrCel#,
		#ptrEmail#,
		#posting#
	)

select * from customer 
	order by cust_idx desc
select count(*) from customer
select * from customer where cust_idx=#custIdx#
select * from customer where customer=#customer#
update customer
	set
		customer=#customer#,
		biz_no=#biz_no#,
		phone=#phone#,
		manager=#manager#,
		mgr_tel=#mgrTel#,
		mgr_cel=#mgrCel#,
		mgr_email=#mgrEmail#,
		partner=#partner#,
		ptr_tel=#ptrTel#,
		ptr_cel=#ptrCel#,
		ptr_email=#ptrEmail#,
		posting=#posting#
	where cust_idx=#custIdx#
delete from customer
	where cust_idx=#custIdx#
	
	
	
INSERT INTO `customer` (`cust_idx`, `cust_id`, `model`, `customer`, `biz_no`, `phone`, `manager`, `mgr_tel`, `mgr_cel`, `mgr_email`, `partner`, `ptr_tel`, `ptr_cel`, `ptr_email`, `posting`, `rgst_date`) VALUES
(5, 'samsungpop', '', '삼성증권', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(6, 'kw', '', '한국노총', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(4, 'kkpc', '', '금호석유화학', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(7, 'wws', '', '화이트윙시스템', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(8, 'alrimee', '', '택시알리미', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(9, 'dongwon', '', '동원엔터프라이즈', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(10, 'nexentire', '', '넥센타이어', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(11, 'lx', '', '대한지적공사', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(12, 'gsretail', '', 'GS', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(13, 'youlchon', '', '율촌화학', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(14, 'arex', '', '인천공항철도', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(15, 'lumigarnet', '', '루미가넷', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(16, 'boryung', '', '보령제약', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(17, 'crown', '', '크라운제과', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(18, 'fujitsu', '', '한국후지쯔', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(19, 'hm', '', '현대자동차', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(20, 'hyundai-autoever', '', '현대오토에버', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(21, 'asiana', '', '금호아시아나', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00');
