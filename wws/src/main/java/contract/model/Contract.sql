CREATE TABLE IF NOT EXISTS `contract` (
  `ctr_idx` int(11) NOT NULL AUTO_INCREMENT,
  `join_type` varchar(20) NOT NULL COMMENT '가입유형',
  `join_fee` int(11) DEFAULT '0' COMMENT '가입비',
  `usim` int(11) DEFAULT '0' COMMENT ' 유심',
  `i_price` int(11) DEFAULT '0' COMMENT '할부원금',
  `i_month` int(11) DEFAULT '0' COMMENT '할부개월',
  `join_nm` varchar(15) DEFAULT NULL COMMENT '가입형태 닉네임',
  `rgst_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  PRIMARY KEY (`ctr_idx`),
  UNIQUE KEY `join_type` (`join_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 테이블의 덤프 데이터 `contract`
--

INSERT INTO `contract` (`ctr_idx`, `join_type`, `join_fee`, `usim`, `i_price`, `i_month`, `join_nm`, `rgst_date`) VALUES
(1, 'new', 24, 0, 0, 24, '신규가입', '2013-09-12 19:32:04'),
(2, 'mnp', 24, 0, 0, 24, '번호이동(공통)', '2013-09-12 19:32:04'),
(3, 'change', 24, 0, 0, 24, '보상기변', '2013-09-12 19:32:04');

	
insert into contract
	(
		join_tpye, 
		join_fee, 
		usim, 
		i_price, 
		i_month, 
		join_nm 
	)
	values
	(
		#joinType#,
		#joinFee#,
		#usim#,
		#installPrice#,
		#installMonth#,
		#joinNm#
	)

select * from contract 
	order by ctr_idx desc
select count(*)from contract
update contract
	set
		join_type=#joinType#,
		join_fee=#joinFee#,
		usim=#usim#,
		i_price=#installPrice#,
		i_month=#installMonth#,
		join_nm=#joinNm#
	where ctr_idx=#ctrIdx#
delete from contract where ctr_idx=#ctrIdx#	



기존의 키 설정 모두 해제
alter table tbl_nm drop 

※
INSERT INTO `contract` (`ctr_idx`, `join_type`, `join_fee`, `usim`, `i_price`, `i_month`, `join_nm`, `rgst_date`) VALUES
(1, 'new', 24, 0, 0, 24, '신규가입', '2013-09-12 19:32:04'),
(2, 'mnp', 24, 0, 0, 24, '번호이동(공통)', '2013-09-12 19:32:04'),
(3, 'change', 24, 0, 0, 24, '보상기변', '2013-09-12 19:32:04');