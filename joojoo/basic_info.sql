insert into persons (persons_code, persons_level)
values(1,'4명이하');
insert into persons (persons_code, persons_level)
values(2,'5~10명');
insert into persons (persons_code, persons_level)
values(3,'10명이상');

insert into service_type (service_type_code, service_type_name)
values(1,'금액 할인');
insert into service_type (service_type_code, service_type_name)
values(2,'서비스 메뉴 제공');

insert into region (region_code, region_name)
values(1,'강남');
insert into region (region_code, region_name)
values(2,'건대');
insert into region (region_code, region_name)
values(3,'신림');
insert into region (region_code, region_name)
values(4,'신촌');
insert into region (region_code, region_name)
values(5,'이태원');
insert into region (region_code, region_name)
values(6,'종로');


insert into store_type (type_code, type_name)
values(1,'바');
insert into store_type (type_code, type_name)
values(2,'룸');
insert into store_type (type_code, type_name)
values(3,'고깃집');
insert into store_type (type_code, type_name)
values(4,'횟집');
insert into store_type (type_code, type_name)
values(5,'포차');
insert into store_type (type_code, type_name)
values(6,'호프');

insert into coupon_status
values(1,'사용 안함');
insert into coupon_status
values(2,'사용 완료');
insert into coupon_status
values(3,'환불');
insert into coupon_status
values(4,'기간 만료');

insert into owners
values('sohn', '1234', '손찬영', 'e-mail', '010', 1);

insert into users
values('user', '1234', '유저', '유저e-mail', '유저폰010', 5);

insert into stores(store_name, store_adress, store_phone, owner_id, region_code, type_code)
values('가게이름','가게주소','가게번호','sohn',0, 0);

insert into event_comment(title, content, start_date, end_date, store_code, persons_code, service_type_code)
values('제목','내용',to_date(sysdate, 'yyyy-mm-dd'), to_date(sysdate, 'yyyy-mm-dd'), 1, 0, 0);

insert into rview_comment(title, content, user_id, star_point, store_code)
values('제목','내용', 'user', 5, 1);


