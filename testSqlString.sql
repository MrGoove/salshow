
create database salshow;
use salshow;

create table tb_user(
id int(32) not null primary key auto_increment,
FName varchar(30),
LName varchar(30),
Email varchar(200),
password varchar(100),
address varchar(500),
gender int ,
photo varchar(200),
buyamount int default 0 
);

insert into tb_user(FName,LName,Email,password,address,gender)
values ('古','天乐','sphinx12252@hotmail.com','64c8b1e43d8ba3115ab40bcea57f010b','香港樱花路23号',1);

insert into tb_user(FName,LName,Email,password,address,gender,authorize)
values ('刘','德华','1988@hotmail.com','64c8b1e43d8ba3115ab40bcea57f010b','香港樱花路22号',1,'admin');

create table tb_goods (
id int not null primary key auto_increment,
goods_name varchar(200),
photo_main varchar(100),
photo_1 varchar(100),
photo_2 varchar(100),
photo_3 varchar(100),
photo_4 varchar(100),
photo_5 varchar(100),
photo_6 varchar(100),
description_brief varchar(500),
description_details varchar(2000),
price int not null,
sizes int,
catogory int,
style int,
brand int,
color int,
discount int default 0
);

insert into  tb_goods (goods_name,photo_main,photo_1,photo_2,photo_3,photo_4,description_brief,description_details,price,catogory,style,brand,color)

values('00001','/resources/images/goods/00001/00001.jpg',
'/resources/images/goods/00001/00002.jpg','/resources/images/goods/00001/00003.jpg','/resources/images/goods/00001/00004.jpg',
'/resources/images/goods/00001/00005.png','this is 00001 description',
'this is a description details',
132,2,2,2,2);

insert into  tb_goods (goods_name,photo_main,photo_1,photo_2,photo_3,photo_4,description_brief,description_details,price,catogory,style,brand,color)

values('2000','/resources/images/goods/2002/2001.jpg',
'/resources/images/goods/2002/2002.jpg','/resources/images/goods/2002/2003.jpg','/resources/images/goods/2002/2004.jpg',
'/resources/images/goods/2002/2005.jpg','this is 00001 description',
'this is a description details',
132,2,2,2,2);

insert into  tb_goods (goods_name,photo_main,photo_1,photo_2,photo_3,photo_4,description_brief,description_details,price,catogory,style,brand,color)

values('3000','/resources/images/goods/3000/3001.jpg',
'/resources/images/goods/3000/3002.jpg','/resources/images/goods/3000/3003.jpg','/resources/images/goods/3000/3004.jpg',
'/resources/images/goods/3000/3005.jpg','this is 00001 description',
'this is a description details',
132,2,2,2,2);

insert into  tb_goods (goods_name,photo_main,photo_1,photo_2,photo_3,photo_4,description_brief,description_details,price,catogory,style,brand,color)

values('5000','/resources/images/goods/5000/5001.jpg',
'/resources/images/goods/5000/5002.jpg','/resources/images/goods/5000/5003.jpg','/resources/images/goods/5000/5004.jpg',
'/resources/images/goods/5000/5005.jpg','this is 00001 description',
'this is a description details',
132,2,2,2,2);

insert into  tb_goods (goods_name,photo_main,photo_1,photo_2,photo_3,photo_4,description_brief,description_details,price,catogory,style,brand,color)

values('6000','/resources/images/goods/6000/6001.jpg',
'/resources/images/goods/6000/6002.jpg','/resources/images/goods/6000/6003.jpg','/resources/images/goods/6000/6004.jpg',
'/resources/images/goods/6000/5006.jpg','this is 6000 description',
'this is a description details',
132,2,2,2,2);

insert into  tb_goods (goods_name,photo_main,photo_1,photo_2,photo_3,photo_4,description_brief,description_details,price,catogory,style,brand,color)

values('7000','/resources/images/goods/7000/7001.jpg',
'/resources/images/goods/7000/7002.jpg','/resources/images/goods/7000/7003.jpg','/resources/images/goods/7000/7004.jpg',
'/resources/images/goods/7000/7005.jpg','this is 7000 description',
'this is a description details',
132,2,2,2,2);

insert into  tb_goods (goods_name,photo_main,photo_1,photo_2,photo_3,photo_4,description_brief,description_details,price,catogory,style,brand,color)

values('8000','/resources/images/goods/8000/8001.jpg',
'/resources/images/goods/8000/8002.jpg','/resources/images/goods/8000/8003.jpg','/resources/images/goods/8000/8004.jpg',
'/resources/images/goods/8000/8005.jpg','this is 8000 description',
'this is a description details',
132,2,2,2,2);

insert into  tb_goods (goods_name,photo_main,photo_1,photo_2,photo_3,photo_4,description_brief,description_details,price,catogory,style,brand,color)

values('9000','/resources/images/goods/9000/9001.jpg',
'/resources/images/goods/9000/9002.jpg','/resources/images/goods/9000/9003.jpg','/resources/images/goods/9000/9004.jpg',
'/resources/images/goods/9000/9005.jpg','this is 9000 description',
'this is a description details',
132,2,2,2,2);
