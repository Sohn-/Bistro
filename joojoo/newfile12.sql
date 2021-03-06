
/* Drop Triggers */

DROP TRIGGER TRI_event_comment_comment_code;
DROP TRIGGER TRI_rview_comment_comment_code;
DROP TRIGGER TRI_stores_store_code;
DROP TRIGGER TRI_wish_list_wish_list_code;



/* Drop Tables */

DROP TABLE coupon CASCADE CONSTRAINTS;
DROP TABLE wish_list CASCADE CONSTRAINTS;
DROP TABLE event_comment CASCADE CONSTRAINTS;
DROP TABLE rview_comment CASCADE CONSTRAINTS;
DROP TABLE stores CASCADE CONSTRAINTS;
DROP TABLE owners CASCADE CONSTRAINTS;
DROP TABLE users CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_event_comment_comment_code;
DROP SEQUENCE SEQ_rview_comment_comment_code;
DROP SEQUENCE SEQ_stores_store_code;
DROP SEQUENCE SEQ_wish_list_wish_list_code;




/* Create Sequences */

CREATE SEQUENCE SEQ_event_comment_comment_code INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_rview_comment_comment_code INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_stores_store_code INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_wish_list_wish_list_code INCREMENT BY 1 START WITH 1;



/* Create Tables */

-- event_comment_code + sequenceNumber(1~5) -> hash
CREATE TABLE coupon
(
	coupon_code varchar2(100) NOT NULL,
	owner_id varchar2(50) NOT NULL,
	user_id varchar2(50),
	comment_code number NOT NULL,
	coupon_status varchar2(50) DEFAULT '미사용' NOT NULL,
	PRIMARY KEY (coupon_code)
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
	delete_request varchar2(50),
	service_type_name varchar2(50) NOT NULL,
	persons_level varchar2(50) NOT NULL,
	PRIMARY KEY (comment_code)
);


CREATE TABLE owners
(
	owner_id varchar2(50) NOT NULL,
	owner_password varchar2(50) NOT NULL,
	owner_name varchar2(20) NOT NULL,
	owner_mail varchar2(50) NOT NULL,
	owner_phone varchar2(50) NOT NULL,
	license_number number NOT NULL UNIQUE,
	PRIMARY KEY (owner_id)
);


CREATE TABLE rview_comment
(
	comment_code number NOT NULL,
	title varchar2(600) NOT NULL,
	content varchar2(2000) NOT NULL,
	reg_date date DEFAULT SYSDATE NOT NULL,
	star_point number NOT NULL,
	store_code number NOT NULL,
	user_id varchar2(50) NOT NULL,
	PRIMARY KEY (comment_code)
);


CREATE TABLE stores
(
	store_code number NOT NULL,
	store_name varchar2(100) NOT NULL,
	store_adress varchar2(1000) NOT NULL,
	store_phone varchar2(50) NOT NULL,
	owner_id varchar2(50) NOT NULL,
	star_point number,
	region_name varchar2(50) NOT NULL,
	type_name varchar2(50) NOT NULL,
	PRIMARY KEY (store_code)
);


CREATE TABLE users
(
	user_id varchar2(50) NOT NULL,
	user_password varchar2(50) NOT NULL,
	user_name varchar2(20) NOT NULL,
	user_mail varchar2(50) NOT NULL,
	user_phone varchar2(50) NOT NULL,
	chance number DEFAULT 3 NOT NULL,
	PRIMARY KEY (user_id)
);


CREATE TABLE wish_list
(
	wish_list_code number NOT NULL,
	user_id varchar2(50) NOT NULL,
	comment_code number NOT NULL,
	PRIMARY KEY (wish_list_code),
	CONSTRAINT only_one_comment UNIQUE (user_id, comment_code)
);



/* Create Foreign Keys */

ALTER TABLE coupon
	ADD FOREIGN KEY (comment_code)
	REFERENCES event_comment (comment_code)
;


ALTER TABLE wish_list
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


ALTER TABLE rview_comment
	ADD FOREIGN KEY (store_code)
	REFERENCES stores (store_code)
;


ALTER TABLE event_comment
	ADD FOREIGN KEY (store_code)
	REFERENCES stores (store_code)
;


ALTER TABLE rview_comment
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE wish_list
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

CREATE OR REPLACE TRIGGER TRI_rview_comment_comment_code BEFORE INSERT ON rview_comment
FOR EACH ROW
BEGIN
	SELECT SEQ_rview_comment_comment_code.nextval
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



