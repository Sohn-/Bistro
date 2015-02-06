
/* Drop Triggers */

DROP TRIGGER TRI_event_comment_comment_code;
DROP TRIGGER TRI_review_comment_comment_code;
DROP TRIGGER TRI_stores_store_code;
DROP TRIGGER TRI_wish_list_wish_list_code;


ON DELETE SET NULL;
/* Drop Tables */

DROP TABLE coupon CASCADE CONSTRAINTS;
DROP TABLE coupon_status CASCADE CONSTRAINTS;
DROP TABLE event_comment CASCADE CONSTRAINTS;
DROP TABLE review_comment CASCADE CONSTRAINTS;
DROP TABLE stores CASCADE CONSTRAINTS;
DROP TABLE wish_list CASCADE CONSTRAINTS;
DROP TABLE users CASCADE CONSTRAINTS;
DROP TABLE grade CASCADE CONSTRAINTS;
DROP TABLE persons CASCADE CONSTRAINTS;
DROP TABLE region CASCADE CONSTRAINTS;
DROP TABLE service_type CASCADE CONSTRAINTS;
DROP TABLE store_type CASCADE CONSTRAINTS;



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

CREATE TABLE coupon
(
	coupon_code varchar2(20) NOT NULL,
	start_date date NOT NULL,
	end_date date NOT NULL,
	id varchar2(10) NOT NULL,
	comment_code number NOT NULL,
	coupon_status_code number NOT NULL,
	PRIMARY KEY (coupon_code)
);


CREATE TABLE coupon_status
(
	coupon_status_code number NOT NULL,
	coupon_status varchar2(10) NOT NULL,
	PRIMARY KEY (coupon_status_code)
);


CREATE TABLE event_comment
(
	comment_code number NOT NULL,
	id varchar2(10) NOT NULL,
	title varchar2(200) NOT NULL,
	content char NOT NULL,
	reg_date date DEFAULT SYSDATE NOT NULL,
	start_date date NOT NULL,
	end_date date NOT NULL,
	store_code number NOT NULL,
	persons_code number NOT NULL,
	service_type_code number NOT NULL,
	delete_request varchar2(1),
	PRIMARY KEY (comment_code)
);


CREATE TABLE grade
(
	grade_code number NOT NULL,
	grade_name varchar2(1) NOT NULL,
	PRIMARY KEY (grade_code)
);


CREATE TABLE persons
(
	persons_code number NOT NULL,
	persons_level varchar2(10),
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
	id varchar2(10) NOT NULL,
	title varchar2(200) NOT NULL,
	content char NOT NULL,
	reg_date date DEFAULT SYSDATE NOT NULL,
	star_point number NOT NULL,
	store_code number NOT NULL,
	PRIMARY KEY (comment_code)
);


CREATE TABLE service_type
(
	service_type_code number NOT NULL,
	service_type_name varchar2(10),
	PRIMARY KEY (service_type_code)
);


CREATE TABLE stores
(
	store_code number NOT NULL,
	store_name varchar2(20) NOT NULL,
	store_adress varchar2(30) NOT NULL,
	store_phone number NOT NULL,
	owner_name varchar2(10) NOT NULL,
	id varchar2(10) NOT NULL,
	region_code number NOT NULL,
	type_code number NOT NULL,
	star_point number,
	PRIMARY KEY (store_code)
);


CREATE TABLE store_type
(
	type_name varchar2(10),
	type_code number NOT NULL,
	PRIMARY KEY (comment_code)
);


CREATE TABLE users
(
	id varchar2(10) NOT NULL,
	password varchar2(10) NOT NULL,
	name varchar2(10) NOT NULL,
	mail varchar2(20) NOT NULL,
	phone number NOT NULL,
	chance number NOT NULL,
	license_number number UNIQUE,
	grade_code number NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE wish_list
(
	wish_list_code number NOT NULL,
	id varchar2(10) NOT NULL,
	PRIMARY KEY (wish_list_code)
);


/* Constraint */

ALTER TABLE COUPON
ADD CONSTRAINT COUPON_CONST_COMMENT_CODE
FOREIGN KEY(COMMENT_CODE) REFERENCES EVENET_COMMENT(COMMENT_CODE)
ON DELETE SET NULL;

ALTER TABLE COUPON
ADD CONSTRAINT COUPON_CONST_USER_ID
FOREIGN KEY(ID) REFERENCES USERS(ID)
ON DELETE SET NULL;



/* Create Foreign Keys */

ALTER TABLE coupon
	ADD FOREIGN KEY (coupon_status_code)
	REFERENCES coupon_status (coupon_status_code)
	
;


ALTER TABLE coupon
	ADD FOREIGN KEY (comment_code)
	REFERENCES event_comment (comment_code)
	
;


ALTER TABLE users
	ADD FOREIGN KEY (grade_code)
	REFERENCES grade (grade_code)
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


ALTER TABLE coupon
	ADD FOREIGN KEY (id)
	REFERENCES users (id)
;


ALTER TABLE stores
	ADD FOREIGN KEY (id)
	REFERENCES users (id)
;


ALTER TABLE wish_list
	ADD FOREIGN KEY (id)
	REFERENCES users (id)
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




