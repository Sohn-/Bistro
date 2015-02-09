
/* Drop Triggers */

DROP TRIGGER TRI_event_comment_comment_code;
DROP TRIGGER TRI_review_comment_comment_code;
DROP TRIGGER TRI_stores_store_code;
DROP TRIGGER TRI_wish_list_wish_list_code;



/* Drop Tables */

DROP TABLE coupon CASCADE CONSTRAINTS;
DROP TABLE coupon_status CASCADE CONSTRAINTS;
DROP TABLE wish_list CASCADE CONSTRAINTS;
DROP TABLE event_comment CASCADE CONSTRAINTS;
DROP TABLE review_comment CASCADE CONSTRAINTS;
DROP TABLE stores CASCADE CONSTRAINTS;
DROP TABLE owners CASCADE CONSTRAINTS;
DROP TABLE persons CASCADE CONSTRAINTS;
DROP TABLE region CASCADE CONSTRAINTS;
DROP TABLE service_type CASCADE CONSTRAINTS;
DROP TABLE store_type CASCADE CONSTRAINTS;
DROP TABLE users CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_event_comment_comment_code;
DROP SEQUENCE SEQ_review_comment_comment_code;
DROP SEQUENCE SEQ_stores_store_code;
DROP SEQUENCE SEQ_wish_list_wish_list_code;




/* Create Sequences */

CREATE SEQUENCE SEQ_event_comment_comment_code INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_review_comment_comment_code INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_stores_store_code INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_wish_list_wish_list_code INCREMENT BY 1 START WITH 1;



/* Create Tables */

-- event_comment_code + sequenceNumber(1~5) -> hash
CREATE TABLE coupon
(
	coupon_code varchar2(20) NOT NULL,
	owner_id varchar2(20) NOT NULL,
	user_id varchar2(20) NOT NULL,
	comment_code number NOT NULL,
	coupon_status_code number NOT NULL,
	PRIMARY KEY (coupon_code)
);


CREATE TABLE coupon_status
(
	coupon_status_code number NOT NULL,
	coupon_status varchar2(50) NOT NULL,
	PRIMARY KEY (coupon_status_code)
);


CREATE TABLE event_comment
(
	comment_code number NOT NULL,
	title varchar2(600) NOT NULL,
	content varchar2(2000) NOT NULL,
	reg_date date DEFAULT SYSDATE NOT NULL,
	start_date date NOT NULL,
	end_date date NOT NULL,
	store_code number NOT NULL,
	persons_code number NOT NULL,
	service_type_code number NOT NULL,
	delete_request varchar2(20),
	PRIMARY KEY (comment_code)
);


CREATE TABLE owners
(
	owner_id varchar2(20) NOT NULL,
	owner_password varchar2(20) NOT NULL,
	owner_name varchar2(20) NOT NULL,
	owner_mail varchar2(50) NOT NULL,
	owner_phone varchar2(50) NOT NULL,
	license_number number NOT NULL UNIQUE,
	PRIMARY KEY (owner_id)
);


CREATE TABLE persons
(
	persons_code number NOT NULL,
	persons_level varchar2(200),
	PRIMARY KEY (persons_code)
);


CREATE TABLE region
(
	region_name varchar2(10),
	region_code number NOT NULL,
	PRIMARY KEY (region_code)
);


CREATE TABLE review_comment
(
	comment_code number NOT NULL,
	owner_id varchar2(20) NOT NULL,
	title varchar2(200) NOT NULL,
	content varchar2(500) NOT NULL,
	reg_date date DEFAULT SYSDATE NOT NULL,
	star_point number NOT NULL,
	store_code number NOT NULL,
	user_id varchar2(20) NOT NULL,
	PRIMARY KEY (comment_code)
);


CREATE TABLE service_type
(
	service_type_code number NOT NULL,
	service_type_name varchar2(200),
	PRIMARY KEY (service_type_code)
);


CREATE TABLE stores
(
	store_code number NOT NULL,
	store_name varchar2(100) NOT NULL,
	store_adress varchar2(1000) NOT NULL,
	store_phone varchar2(50) NOT NULL,
	owner_id varchar2(20) NOT NULL,
	region_code number NOT NULL,
	type_code number NOT NULL,
	star_point number,
	PRIMARY KEY (store_code)
);


CREATE TABLE store_type
(
	type_name varchar2(10),
	type_code number NOT NULL,
	PRIMARY KEY (type_code)
);


CREATE TABLE users
(
	user_id varchar2(20) NOT NULL,
	user_password varchar2(20) NOT NULL,
	user_name varchar2(20) NOT NULL,
	user_mail varchar2(50) NOT NULL,
	user_phone varchar2(50) NOT NULL,
	chance number DEFAULT 3 NOT NULL,
	PRIMARY KEY (user_id)
);


CREATE TABLE wish_list
(
	wish_list_code number NOT NULL,
	user_id varchar2(20) NOT NULL,
	comment_code number NOT NULL,
	PRIMARY KEY (wish_list_code)
);



/* Create Foreign Keys */

ALTER TABLE coupon
	ADD FOREIGN KEY (coupon_status_code)
	REFERENCES coupon_status (coupon_status_code)
;


ALTER TABLE wish_list
	ADD FOREIGN KEY (comment_code)
	REFERENCES event_comment (comment_code)
;


ALTER TABLE coupon
	ADD FOREIGN KEY (comment_code)
	REFERENCES event_comment (comment_code)
;


ALTER TABLE stores
	ADD FOREIGN KEY (owner_id)
	REFERENCES owners (owner_id)
;


ALTER TABLE coupon
	ADD FOREIGN KEY (owner_id)
	REFERENCES owners (owner_id)
;


ALTER TABLE event_comment
	ADD FOREIGN KEY (persons_code)
	REFERENCES persons (persons_code)
;


ALTER TABLE stores
	ADD FOREIGN KEY (region_code)
	REFERENCES region (region_code)
;


ALTER TABLE event_comment
	ADD FOREIGN KEY (service_type_code)
	REFERENCES service_type (service_type_code)
;


ALTER TABLE event_comment
	ADD FOREIGN KEY (store_code)
	REFERENCES stores (store_code)
;


ALTER TABLE review_comment
	ADD FOREIGN KEY (store_code)
	REFERENCES stores (store_code)
;


ALTER TABLE stores
	ADD FOREIGN KEY (type_code)
	REFERENCES store_type (type_code)
;


ALTER TABLE wish_list
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE review_comment
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE coupon
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_event_comment_comment_code BEFORE INSERT ON event_comment
FOR EACH ROW
BEGIN
	SELECT SEQ_event_comment_comment_code.nextval
	INTO :new.comment_code
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_review_comment_comment_code BEFORE INSERT ON review_comment
FOR EACH ROW
BEGIN
	SELECT SEQ_review_comment_comment_code.nextval
	INTO :new.comment_code
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_stores_store_code BEFORE INSERT ON stores
FOR EACH ROW
BEGIN
	SELECT SEQ_stores_store_code.nextval
	INTO :new.store_code
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_wish_list_wish_list_code BEFORE INSERT ON wish_list
FOR EACH ROW
BEGIN
	SELECT SEQ_wish_list_wish_list_code.nextval
	INTO :new.wish_list_code
	FROM dual;
END;

/




/* Comments */

COMMENT ON TABLE coupon IS 'event_comment_code + sequenceNumber(1~5) -> hash';



