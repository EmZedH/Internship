select * from shop_acc;

/*
s_id  s_amount  s_date     s_item  c_id                                                         SHOP ACCOUNT OF ALL PURCHASES OF DIFFERENT CUSTOMERS
----  --------  ---------  ------  ----
1     400       24/1/2023  EEE     2   
2     500       25/1/2023  AAA     1   
3     600       26/1/2023  CCC     3   
4     200       27/1/2023  BBB     1   
5     100       28/1/2023  FFF     2   
*/

select * from cust_acc;

/*
id  c_amount  c_date     c_item.                                                                 CUSTOMER ACCOUNT FOR A PARTICULAR CUSTOMER WITH C_ID = 1
--  --------  ---------  ------
1   500       25/1/2023  AAA   
2   200       27/1/2023  BBB   
*/

begin transaction;
insert into cust_acc (c_amount,c_date,c_item) values (300,'30/1/2023','SSS');                     CUSTOMER WITH C_ID = 1 MAKES A PURCHASE ON 30/1/2023

insert into shop_acc (s_amount,s_date,s_item,c_id) values (300,'30/1/2023','SSS',1);              PURCHASE GETS REFLECTED IN THE SHOPS ACCOUNT
commit;

select * from shop_acc;

/*
s_id  s_amount  s_date     s_item  c_id
----  --------  ---------  ------  ----
1     400       24/1/2023  EEE     2   
2     500       25/1/2023  AAA     1   
3     600       26/1/2023  CCC     3   
4     200       27/1/2023  BBB     1   
5     100       28/1/2023  FFF     2   
6     300       30/1/2023  SSS     1   
*/

select * from cust_acc;

/*
id  c_amount  c_date     c_item
--  --------  ---------  ------
1   500       25/1/2023  AAA   
2   200       27/1/2023  BBB   
3   300       30/1/2023  SSS   
*/

begin transaction;
insert into cust_acc (c_amount,c_date,c_item) values (700,'31/1/2023','TTT');
insert into shop_acc (c_amount,c_date,c_item) values (700,'31/1/2023','TTT',1);
rollback;

select * from shop_acc;

/*
s_id  s_amount  s_date     s_item  c_id                                                          SINCE WE DID A ROLLBACK, ITEM 'TTT' DOESN'T GET UPDATED IN BOTH CUSTOMER AND SHOPS ACCOUNT
----  --------  ---------  ------  ----
1     400       24/1/2023  EEE     2   
2     500       25/1/2023  AAA     1   
3     600       26/1/2023  CCC     3   
4     200       27/1/2023  BBB     1   
5     100       28/1/2023  FFF     2   
6     300       30/1/2023  SSS     1   
*/

select * from cust_acc;

/*
id  c_amount  c_date     c_item
--  --------  ---------  ------
1   500       25/1/2023  AAA   
2   200       27/1/2023  BBB   
3   300       30/1/2023  SSS   
*/

