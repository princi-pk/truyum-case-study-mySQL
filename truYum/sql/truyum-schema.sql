create database truyum; 
use truyum;

create table Menu_Items(
MENU_ITEM_ID int primary key,
NAME varchar(25),
PRICE varchar(25),
ACTIVE enum('YES','NO'),
DATE_OF_LAUNCH varchar(10),
CATEGORY enum('STARTERS','MAIN COURSE','DESSERTS','DRINKS'),
FREE_DELIVERY enum('YES','NO'),
ACTION enum('EDIT')
);

create table User(
USER_ID varchar(10) primary key,
NAME varchar(25),
MOBILE_NO bigint
);

create table Cart(
CART_ID int primary key,
USER_ID varchar(10),
MENU_ITEM_ID int,
QUANTITY int,
foreign key(USER_ID) references User(USER_ID),
foreign key(MENU_ITEM_ID) references Menu_Items(MENU_ITEM_ID)
);

