/*1. View Menu Item List Admin (TYUC001);
a. Frame insert scripts to add data into menu_item table. Refer View Menu
Item List Admin screen below for sample data.*/
insert into Menu_Items
(MENU_ITEM_ID, NAME, PRICE, ACTIVE, DATE_OF_LAUNCH, CATEGORY, FREE_DELIVERY, ACTION)
VALUES
(1,"SANDWICH", "Rs.99.00", "yes", "15/03/2017", "Main Course", "yes", "edit"),
(2,"BERGER", "Rs.129.00", "yes", "23/12/2017", "Main Course", "no", "edit"),
(3,"PIZZA", "Rs.149.00", "yes", "21/08/2017", "Main Course", "no", "edit"),
(4,"FRENCH FRIES", "Rs.57.00", "no", "02/07/2017", "Starters", "yes", "edit"),
(5,"CHOCOLATE BROWNIES", "Rs.32.00", "yes", "02/11/2022", "Desserts", "yes", "edit");

/*b. Frame SQL query to get all menu items*/
select * from Menu_Items;

/*2. View Menu Item List Customer (TYUC002)
a. Frame SQL query to get all menu items which after launch date and is
active.*/
select * from Menu_Items where DATE_OF_LAUNCH< curdate() and ACTIVE="yes";

/*3. Edit Menu Item (TYUC003)
a. Frame SQL query to get a menu items based on Menu Item Id*/
select * from Menu_Items where MENU_ITEM_ID=1;
select * from Menu_Items where MENU_ITEM_ID=2;
select * from Menu_Items where MENU_ITEM_ID=3;
select * from Menu_Items where MENU_ITEM_ID=4;
select * from Menu_Items where MENU_ITEM_ID=5;

/*b. Frame update SQL menu_items table to update all the columns values
based on Menu Item Id*/
update Menu_Items set 
NAME="Noodles", PRICE="150", ACTIVE="Yes", DATE_OF_LAUNCH="15/02/2017",
 CATEGORY="Starters", FREE_DELIVERY="Yes", ACTION="Edit" where MENU_ITEM_ID=4;

/*4. Add to Cart (TYUC004)
a. Frame insert scripts for adding data into user and cart tables.In user table
create two users. Once user will not have any entries in cart, while the
other will have at least 3 items in the cart.*/
insert into User (USER_ID, NAME, MOBILE_NO)
values
("U001","Radhika",8789965431), ("U002","Atharva",9975436678);

insert into Cart(CART_ID, USER_ID, MENU_ITEM_ID, QUANTITY)
values
(1,"U001",1,2), (2,"U001",2,1), (3,"U001",2,4), (4,"U001",3,5);

/*5. View Cart (TYUC005)
a. Frame SQL query to get all menu items in a particular user’s cart*/
select * from Cart where USER_ID="U001";

/*b. Frame SQL query to get the total price of all menu items in a particular
user’s cart*/
select SUM(PRICE) as TOTAL_PRICE 
from MENU_ITEMS
where MENU_ITEM_ID in (select MENU_ITEM_ID from Cart where USER_ID="U001");

/*6. Remove Item from Cart (TYUC006)
a. Frame SQL query to remove a menu items from Cart based on User Id
and Menu Item Id*/
Delete from Cart where USER_ID="U001" and MENU_ITEM_ID=3;





