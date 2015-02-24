
insert into owners values('sohn', '1234', '손찬영', 'e-mail', '010', 1);
insert into owners values('gangnam', '1234', '김강남', 'gangnam@gamil.com', '010-3481-7979', 123456789);
insert into owners values('konkuk', '1234', '김건국', 'konkuk@gamil.com', '010-3408-1313', 123456788);
insert into owners values('sinrim', '1234', '김신림', 'sinrim@gamil.com', '010-3481-9746', 123456787);
insert into owners values('shinchon', '1234', '김신촌', 'shinchon@gamil.com', '010-3481-7979', 123456786);
insert into owners values('itaewon', '1234', '이태원', 'itaewon@gamil.com', '010-3481-4646', 123456785);
insert into owners values('jongro', '1234', '김종로', 'jongro@gamil.com', '010-3481-1465', 123456784);


insert into users values('user', '1234', '유저', '유저e-mail@email', '유저폰010', 5);
insert into users values('cysohn', '1234', '손순이', 'cysohn@gmail.com', '010-1588-1588', 5);
insert into users values('shjeong', '1234', '정돌이', 'hc426797@nate.com', '010-1599-1599', 5);


insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('베이비페이스강남점','서울특별시 강남구 삼성동 157-10','02-1234-0001','gangnam','강남', '바');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('베이비페이스건대점','서울특별시 광진구 화양동 157-10','02-2345-0001','konkuk','건대', '바');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('베이비페이스신림점','서울특별시 관악구 신림동 157-10','02-3456-0001','sinrim','신림', '바');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('베이비페이스신촌점','서울특별시 마포구 노고산동 157-10','02-4567-0001','shinchon','신촌', '바');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('베이비페이스이태원점','서울특별시 용산구 이태원동 157-10','02-5678-0001','itaewon','이태원', '바');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('베이비페이스종로점','서울특별시 종로구 창신동 157-10','02-6789-0001','jongro','종로', '바');


insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('아이콘라운지강남점','서울특별시 강남구 삼성동 157-11','02-1234-0002','gangnam','강남', '룸');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('아이콘라운지건대점','서울특별시 광진구 화양동 157-11','02-2345-0002','konkuk','건대', '룸');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('아이콘라운지신림점','서울특별시 관악구 신림동 157-11','02-3456-0002','sinrim','신림', '룸');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('아이콘라운지신촌점','서울특별시 마포구 노고산동 157-11','02-4567-0002','shinchon','신촌', '룸');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('아이콘라운지이태원점','서울특별시 용산구 이태원동 157-11','02-5678-0002','itaewon','이태원', '룸');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('아이콘라운지종로점','서울특별시 종로구 창신동 157-11','02-6789-0002','jongro','종로', '룸');



insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('꿀돼지강남점','서울특별시 강남구 삼성동 157-12','02-1234-0003','gangnam','강남', '고깃집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('꿀돼지건대점','서울특별시 광진구 화양동 157-12','02-2345-0003','konkuk','건대', '고깃집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('꿀돼지신림점','서울특별시 관악구 신림동 157-12','02-3456-0003','sinrim','신림', '고깃집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('꿀돼지신촌점','서울특별시 마포구 노고산동 157-12','02-4567-0003','shinchon','신촌', '고깃집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('꿀돼지이태원점','서울특별시 용산구 이태원동 157-12','02-5678-0003','itaewon','이태원', '고깃집');
insert into stores(store_name, store_adress, store_phone, owner_id, region_name, type_name)
values('꿀돼지종로점','서울특별시 종로구 창신동 157-12','02-6789-0003','jongro','종로', '고깃집');




insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('종로꿀돼지','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('강남꿀돼지','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');

insert into event_comment(title, content, start_date, end_date, store_code, persons_level, service_type_name)
values('신촌꿀돼지','신선한 계절과일 무료제공',to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), to_date(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 10, '4명이하', '서비스 메뉴 제공');


insert into rview_comment(title, content, user_id, star_point, store_code)
values('제목','내용', 'user', 5, 1);

insert into Coupon values('joojoo','sohn','user',1,'미사용');	
	
insert into Coupon values('joojoo2','sohn','user',21,'사용');	


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

insert into rview_comment(title, content, user_id, star_point, store_code)
values('후기제목1','후기내용1', 'user', 5, 1);

insert into rview_comment(title, content, user_id, star_point, store_code)
values('후기제목2','후기내용2', 'user', 5, 1);

insert into rview_comment(title, content, user_id, star_point, store_code)
values('후기제목3','후기내용3', 'user', 5, 1);
