
insert into owners values('sohn', '1234', '손찬영', 'e-mail', '010', 1);
insert into owners values('gangnam', '1234', '정송희', 'gangnam@gamil.com', '010-3481-7979', 1234567894);
insert into owners values('konkuk', '1234', '김건국', 'konkuk@gamil.com', '010-3408-1313', 1234556788);
insert into owners values('sinrim', '1234', '백신히', 'sinrim@gamil.com', '010-3481-9746', 1234567687);
insert into owners values('shinchon', '1234', '김태희', 'shinchon@gamil.com', '010-3481-7979', 1233456786);
insert into owners values('itaewon', '1234', '김사랑', 'itaewon@gamil.com', '010-3481-4646', 1234526785);
insert into owners values('jongro', '1234', '유재석', 'jongro@gamil.com', '010-3481-1465', 1234561784);
insert into owners values('abc123', '12345', '김종국', 'abc123@gamil.com', '010-3481-7979', 1234656786);
insert into owners values('idisnull', '12345', '김청', 'idisnull@gamil.com', '010-3481-4646', 1323456785);
insert into owners values('banana', '123', '윤은혜', 'banana@gamil.com', '010-3481-1465', 1234536784);
insert into owners values('apple', 'redred', '이한희', 'apple@gamil.com', '010-3481-7979', 1223456786);
insert into owners values('choco31', 'choco22', '방승원', 'choco31n@gamil.com', '010-3481-4646', 123456785);
insert into owners values('grape', '6555', '유지연', 'grape@gamil.com', '010-3481-1465', 1237456784);


insert into users values('user', '1234', '이수연', 'sat2@email', '010-3424-2321', 5);
insert into users values('cysohn', '1234', '이사랑', 'sh35@gmail.com', '011-3424-2421', 5);
insert into users values('shjeong', '1234', '추사랑', 'haet1@nate.com', '010-3234-2421', 5);
insert into users values('lion1', '3535', '김예슬', 'dah2@email', '유저폰010', 5);
insert into users values('tiger12', '1352234', '한에슬', 'fsf1@gmail.com', '010-1348-1222', 5);
insert into users values('liger10', '1a234', '현빈', 'hfhh2@nate.com', '010-463-2353', 5);
insert into users values('monkey', '123d4', '원빈', 'dsfl@email', '010-1235-1598', 5);
insert into users values('1100mo', '12344', '최정모', 'hdafha@gmail.com', '010-9128-1588', 5);
insert into users values('22jg', '12sx34', '정유은', 'asdfa3@nate.com', '010-6674-9177', 5);

insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('와라와라 강남점','서울특별시 강남구 삼성동 157-266','02-1234-0001','banana','강남', '호프');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('와라와라 건대점','서울특별시 광진구 화양동 24-32','02-2345-0001','konkuk','건대', '호프');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('와라와라 신림점','서울특별시 관악구 신림동 235-10','02-3456-0001','idisnull','신림', '호프');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('와라와라 신촌점','서울특별시 마포구 노고산동 145-120','02-4567-0001','jongro','신촌', '호프');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('와라와라 이태원점','서울특별시 용산구 이태원동 14-120','02-5678-0001','apple','이태원', '호프');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('와라와라 종로점','서울특별시 종로구 창신동 25-130','02-6789-0001','itaewon','종로', '호프');

insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('베이비페이스 강남점','서울특별시 강남구 삼성동 157-10','02-1234-0001','gangnam','강남', '바');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('베이비페이스 건대점','서울특별시 광진구 화양동 157-10','02-2345-0001','grape','건대', '바');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('베이비페이스 신림점','서울특별시 관악구 신림동 157-10','02-3456-0001','sinrim','신림', '바');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('베이비페이스 신촌점','서울특별시 마포구 노고산동 157-10','02-4567-0001','shinchon','신촌', '바');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('베이비페이스 이태원점','서울특별시 용산구 이태원동 157-10','02-5678-0001','itaewon','이태원', '바');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('베이비페이스 종로점','서울특별시 종로구 창신동 157-10','02-6789-0001','jongro','종로', '바');


insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('아이콘라운지강남점','서울특별시 강남구 삼성동 157-11','02-1234-0002','itaewon','강남', '룸');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('아이콘라운지건대점','서울특별시 광진구 화양동 157-11','02-2345-0002','apple','건대', '룸');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('아이콘라운지신림점','서울특별시 관악구 신림동 157-11','02-3456-0002','jongro','신림', '룸');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('아이콘라운지신촌점','서울특별시 마포구 노고산동 157-11','02-4567-0002','shinchon','신촌', '룸');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('아이콘라운지이태원점','서울특별시 용산구 이태원동 157-11','02-5678-0002','itaewon','이태원', '룸');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('아이콘라운지종로점','서울특별시 종로구 창신동 157-11','02-6789-0002','banana','종로', '룸');



insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('다성 강남점','서울특별시 강남구 삼성동 12-521','02-1234-0343','aetae','강남', '횟집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('다성 건대점','서울특별시 광진구 화양동 12-124','02-2345-1003','eatete','건대', '횟집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('다성 신림점','서울특별시 관악구 신림동 37-12','02-3456-4603','qwert','신림', '횟집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('다성 신촌점','서울특별시 마포구 노고산동 23-124','02-4567-2343','ghha2','신촌', '횟집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('다성 이태원점','서울특별시 용산구 이태원동 46-84','02-5678-1243','ahu4','이태원', '횟집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('다성 종로점','서울특별시 종로구 창신동 9235-212','02-6529-0003','151adf','종로', '횟집');

insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('꿀돼지 강남점','서울특별시 강남구 삼성동 12-12','02-1234-0003','htyhy3','강남', '고깃집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('꿀돼지 건대점','서울특별시 광진구 화양동 12-12','02-2345-0003','eatete','건대', '고깃집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('꿀돼지 신림점','서울특별시 관악구 신림동 7-12','02-3456-0003','jsha','신림', '고깃집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('꿀돼지 신촌점','서울특별시 마포구 노고산동 45-12','02-4567-0003','htyhy3','신촌', '고깃집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('꿀돼지 이태원점','서울특별시 용산구 이태원동 12-12','02-5678-0003','jsha','이태원', '고깃집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('꿀돼지 종로점','서울특별시 종로구 창신동 97-12','02-6789-0003','ghha2','종로', '고깃집');



insert into owners values('151adf', '1df234', '정승환', '335@gamil.com', '010-3481-7979', 2222525657);
insert into owners values('adsg22', '1adf234', '김유미', '23521@gamil.com', '010-3408-1313', 4234556788);
insert into owners values('ahu4', '12ag34', '백조원', 'saf1@gamil.com', '010-3445-9746', 78234567687);
insert into owners values('htyhy3', '12d34', '이바울', 'aesr2@gamil.com', '010-2421-7979', 25233456786);
insert into owners values('ghha2', '12a234', '김정은', 'ah42@gamil.com', '010-3255-4646', 12234526785);
insert into owners values('aeeszg', '1s234', '김정희', 'ddd2@gamil.com', '010-3434-1465', 235561784);
insert into owners values('aetae', '12df345', '안서연', 'aq35r@gamil.com', '010-3231-7979', 3643656786);
insert into owners values('ttez', '123g45', '임윤아', 'ateawe2@gamil.com', '010-5481-4646', 734456785);
insert into owners values('eatete', '1d23', '서주현', 'asdfa2@gamil.com', '010-2681-1465', 6244536784);
insert into owners values('qaer', 'redred', '김정유', 'dfs3e@gamil.com', '010-8581-7979', 235456786);
insert into owners values('qwert', 'choco22', '신성록', 'dfffffn@gamil.com', '017-3481-4646', 39356785);
insert into owners values('jsha', '6555', '김태연', 'ha3@gamil.com', '010-3481-1185', 156784);



insert into owners values('137f', '1df1234', '유상무', '36635@gamil.com', '010-3481-7979', 48640643);
insert into owners values('ad3ads', '1adf234', '유세윤', '2373521@gamil.com', '010-3408-1313', 9768768);
insert into owners values('ate33', '612ag34', '백희원', 'saf341@gamil.com', '010-3445-9746', 72632687);
insert into owners values('ahth3', '812d34', '이성원', 'ae9sr26@gamil.com', '010-2421-7979', 8485236786);
insert into owners values('gds6', '182a234', '김정민', 'a9h42@gamil.com', '010-3255-4646', 145726785);
insert into owners values('s7szg', '10ss234', '윤승현', '1ddd2@gamil.com', '010-3434-1465', 23523684);
insert into owners values('a2ae', '112d7f345', '엄기현', 'a6q35r@gamil.com', '010-3231-7979', 33736786);
insert into owners values('4hgtez', '4123g45', '김기리', 'at3eawe2@gamil.com', '010-5481-4646', 73463785);
insert into owners values('f7ete', '01d23', '진지희', 'asdf8a2@gamil.com', '010-2681-1465', 624453214);
insert into owners values('dy56', '0redred', '윤유선', 'df23e@gamil.com', '010-8581-7979', 7235262);
insert into owners values('uuu5', '5choco22', '문채원', 'd75ffffn@gamil.com', '017-3481-4646', 34626785);
insert into owners values('hihihi2', '96555', '이특', 'h9a3@gamil.com', '010-3481-1185', 15642684);


insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('한신포차 강남점','서울특별시 강남구 삼성동 22-152','02-1234-0003','4hgtez','강남', '포차');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('한신포차 건대점','서울특별시 광진구 화양동 346-172','02-2345-0003','uuu5','건대', '포차');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('한신포차 신림점','서울특별시 관악구 신림동 235-132','02-3456-0003','hihihi2','신림', '포차');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('한신포차 신촌점','서울특별시 마포구 노고산동 57-142','02-4567-0003','ate33','신촌', '포차');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('한신포차 이태원점','서울특별시 용산구 이태원동 132-122','02-5678-0003','dy56','이태원', '포차');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('한신포차 종로점','서울특별시 종로구 창신동 267-142','02-6789-0003','gds6','종로', '포차');


insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('맥주 2000cc 제공','오픈 기념으로 맥주 2000cc를 무료로 드립니다. (안주 1개 이상 주문 시)',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 35, '4명이하', '서비스 메뉴 제공');
insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('소주 1병 제공','여자손님께 소주 1병을 무료로 드립니다. (안주 1개 이상 주문 시)',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 32, '4명이하', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('10% 할인 이벤트','쿠폰 소지 고객에게 10%를 할인해드립니다',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 35, '5~10명', '금액 할인');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('20% 할인 이벤트','쿠폰 소지 고객에게 20%를 할인해드립니다',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 2, '5~10명', '금액 할인');


insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('신선한 계절 과일 제공','맛있는 과일을 드립니다.',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 27, '10명이상', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('팝콘 제공','캬라멜 팝콘을 드립니다',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 27, '5~10명', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('신선한 계절 과일 제공','맛있는 과일을 드립니다.',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 27, '5~10명', '서비스 메뉴 제공');


insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('안주 1개 공짜','안주 1개공짜! 대신 술은 꼭 주문해야 합니다.',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 35, '4명이하', '서비스 메뉴 제공');


insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('음료수 무한 제공','음료수를 무한으로 제공합니다.',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '10명이상', '서비스 메뉴 제공');


insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('20%할인 이벤트','단체 손님 환영합니다. 단체 손님께 20% 할인',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '10명이상', '금액 할인');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('만원 할인!','남성고객만 오신 테이블에 할인이 제공됩니다.',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '금액 할인');


/*

insert into Coupon values('joojoo','sohn','user',1,'미사용');	
	
insert into Coupon values('joojoo2','sohn','user',2,'사용');	

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('나는야꿀돼지','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('찬영이꿀돼지','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('송희꿀돼지','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');


insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('미숫가루꿀돼지','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('씨유꿀돼지','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('한자꿀돼지','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');



insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('미숫가루꿀돼지1','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('씨유꿀돼지2','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('한자꿀돼지3','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');


insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('미숫가루꿀돼지4','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('씨유꿀돼지5','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('한자꿀돼지6','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('한자꿀돼지9','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');
*/


insert into rview_comment(title, content, user_id, star_point, store_code)
values('맛있습니다.','회가 신선하고 맛있어요 깔끔합니다. 추천', 'user', 4, 36);

insert into rview_comment(title, content, user_id, star_point, store_code)
values('맛없습니다..','사람이 너무 많고 맛이 없어요 비추천', 'liger10', 1, 2);

insert into rview_comment(title, content, user_id, star_point, store_code)
values('괜찮아요','나쁘지 않습니다. ', 'lion1', 3, 3);

insert into rview_comment(title, content, user_id, star_point, store_code)
values('후기씁니다 다녀왔어요','음 사장님이 친절해요', 'lion1', 5, 24);

insert into rview_comment(title, content, user_id, star_point, store_code)
values('후기제목3','후기내용3', 'monkey', 5, 31);

insert into rview_comment(title, content, user_id, star_point, store_code)
values('후기제목3','후기내용3', 'shjeong', 5, 11);

insert into rview_comment(title, content, user_id, star_point, store_code)
values('후기제목3','후기내용3', '22jg', 5, 10);

insert into rview_comment(title, content, user_id, star_point, store_code)
values('후기제목3','후기내용3', 'shjeong', 5, 33);

insert into rview_comment(title, content, user_id, star_point, store_code)
values('후기제목3','후기내용3', '1100mo', 5, 22);


