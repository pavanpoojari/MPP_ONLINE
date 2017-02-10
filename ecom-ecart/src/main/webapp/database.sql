|-------------------------------------------------------------------------------------------------------------------------------------|
| url : jdbc:h2:tcp://localhost/~/webtemp
| username : sa
| password : sa
  jdbc:h2:tcp://localhost/~/temp
|-------------------------------------------------------------------------------------------------------------------------------------|
create table category (
    id identity, 
    name varchar2(25) not null unique, 
    description varchar(150) not null
    );

SELECT * FROM CATEGORY 

insert into category(name,description) values('Electronics','This is Dummy Electronics');
insert into category(name,description) values('Computers & Internet','This is Dummy Computers & Internet');
insert into category(name,description) values('Entertainment & Games','This is Dummy Entertainment & Games');
insert into category(name,description) values('Business & Service','This is Dummy Business & Service');
-------------------------------------------------------------------------------------------------------------------------------------
create table developer(
id identity,
name varchar(25) not null,
email varchar(50) not null,
phonenumber number(10) not null
);

SELECT * FROM DEVELOPER 

insert into DEVELOPER(name,email,phonenumber) values ('pavanpoojary','pavanpoojary@gmail.com','7666490917');
insert into DEVELOPER(name,email,phonenumber) values ('test','test@gmail.com','8080216063');
-------------------------------------------------------------------------------------------------------------------------------------
create table product
(
product_id identity,
name varchar2(25) not null,
description varchar2(100),
price decimal(8,2) not null,
category_id int(10) not null,
constraint fk_category_id FOREIGN KEY(category_id)
references category(id),
developer_id int(10) not null,
constraint fk_developer_id FOREIGN KEY(developer_id)
references developer(id)
);

SELECT * FROM PRODUCT 

insert into PRODUCT (NAME,DESCRIPTION,PRICE,CATEGORY_ID,DEVELOPER_ID) values ('ANI VIEWS','This is an Web template','720',3,1);
insert into PRODUCT (NAME,DESCRIPTION,PRICE,CATEGORY_ID,DEVELOPER_ID) values ('COURIER','This is an Web template','1220',4,1);
-------------------------------------------------------------------------------------------------------------------------------------
    create table user 
    (
    user_id identity,
    username varchar2(30) UNIQUE,
    firstname varchar2(30),
    lastname varchar2(30),
    emailid varchar2(30) UNIQUE,
    gender VARCHAR(10),
    phonenumber varchar2(30),
    password varchar2(15),
    enable boolean default 'true',
    role varchar(20) default 'USER',
    );

SELECT * FROM USER 

insert into USER (username,firstname,lastname,emailid,gender,phonenumber,password,role) values ('pavanpoojary','pavan', 'poojary','pavanpoojary@gmail.com','Male','7666490917','1234','ADMIN');
insert into USER (username,firstname,lastname,emailid,gender,phonenumber,password) values ('test' , 'test' ,'test' , 'test@gmail.com','Female','8080216063','12345')
insert into USER (username,firstname,lastname,emailid,gender,phonenumber,password) values ('testtest','test' ,'test', 'test123@gmail.com','Male','8080216063','123456')
-------------------------------------------------------------------------------------------------------------------------------------
create table cart 
(	
    cart_id IDENTITY,
	total DECIMAL(8,2) NOT NULL,
	noofcartitems int(10) NOT NULL,
	user_id int(10) NOT NULL,
	CONSTRAINT fk_user_cart_id FOREIGN KEY(user_id)
	REFERENCES USER(user_id)
);

SELECT * FROM CART 

insert into CART (total,user_id) values (3,1);
insert into CART (total,user_id) values (2,1);
-------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE CART_ITEM(
	item_id IDENTITY,
	cart_id int(10) NOT NULL,
	product_id int(10) NOT NULL,
	price DECIMAL(8,2) NOT NULL,
	total DECIMAL(8,2) NOT NULL,
	CONSTRAINT fk_item_cart_id FOREIGN KEY(cart_id)
	REFERENCES CART(cart_id),
	CONSTRAINT fk_item_product_id FOREIGN KEY(product_id)
	REFERENCES PRODUCT(product_id)
);

SELECT * FROM CART_ITEM

insert into CART_ITEM (cart_id,product_id,price,total) values (1,2,1220,1220);
insert into CART_ITEM (cart_id,product_id,price,total) values (2,1,1220,2000);
-------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE ORDERS(
	order_id IDENTITY,
	total int(10) NOT NULL,
	noofcartitems int(10) NOT NULL,
	paymentdetails varchar(20) NOT NULL,
	user_id int(10) NOT NULL,
	CONSTRAINT fk_orders_user_id FOREIGN KEY(user_id)
	REFERENCES USER(user_id)
);

SELECT * FROM ORDERS

-------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE ORDERED_ITEM(
	ordered_id IDENTITY,
	order_id int(10) NOT NULL,
	product_id int(10) NOT NULL,
	price DECIMAL(8,2) NOT NULL,
	total DECIMAL(8,2) NOT NULL,
	CONSTRAINT fk_o_order_id FOREIGN KEY (order_id)
	REFERENCES ORDERS(order_id),
	CONSTRAINT fk_o_product_id FOREIGN KEY (product_id)
	REFERENCES PRODUCT(product_id)
);

SELECT * FROM ORDERED_ITEM 

-------------------------------------------------------------------------------------------------------------------------------------