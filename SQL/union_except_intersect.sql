select * from customer;

/*
id  c_name
--  ------
1   AAA   
2   BBB   
3   CCC   
4   DDD   
5   EEE   
6   FFF   
*/

select * from employee;

/*
e_id  e_name  c_id
----  ------  ----
1     GGG     7   
2     HHH     8   
3     CCC     3   
4     EEE     5   
*/

select id,c_name as name from customer union select c_id, e_name from employee;

/*
id  name
--  ----
1   AAA   
2   BBB   
3   CCC   
4   DDD   
5   EEE   
6   FFF   
7   GGG   
8   HHH   
*/

select id,c_name as name from customer union all select c_id, e_name from employee;

/*
id  name
--  ----
1   AAA   
2   BBB   
3   CCC   
4   DDD   
5   EEE   
6   FFF   
7   GGG   
8   HHH   
3   CCC   
5   EEE   
*/

select id,c_name as name from customer except select c_id, e_name from employee;

/*
id  name
--  ----
1   AAA   
2   BBB   
4   DDD   
6   FFF   
*/

select id,c_name as name from customer intersect select c_id, e_name from employee;

/*
id  name
--  ----
3   CCC   
5   EEE   
*/
