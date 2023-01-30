select * from company;

/*
id  name   age  address     salary 
--  -----  ---  ----------  -------
1   PAUL   32   CALIFORNIA  20000.0
2   ALLEN  25   TEXAS       15000.0
3   TEDDY  23   NORWAY      20000.0
4   MARK   25   RICH-MOND   65000.0
5   DAVID  27   TEXAS       85000.0
6   KIM    22   SOUTH-HALL  45000.0
7   JAMES  24   HOUSTON     10000.0
*/

select * from department;

/*
id  dept         emp_id
--  -----------  ------
1   IT Billing   1     
2   Engineering  2     
3   Finance      7     
*/

select emp_id, name, dept from company inner join department on company.id = department.emp_id;
/*
emp_id  name   dept       
------  -----  -----------
1       PAUL   IT Billing 
2       ALLEN  Engineering
7       JAMES  Finance    
*/

select emp_id, name, dept from company left outer join department on company.id = department.emp_id;

/*
emp_id  name   dept       
------  -----  -----------
1       PAUL   IT Billing 
2       ALLEN  Engineering
        TEDDY             
        MARK              
        DAVID             
        KIM               
7       JAMES  Finance    
*/

select emp_id, name, dept from company inner join department on company.id = department.emp_id union select emp_id, name, dept from company left outer join department on company.id = department.emp_id;

/*
emp_id  name   dept       
------  -----  -----------
        DAVID             
        KIM               
        MARK              
        TEDDY             
1       PAUL   IT Billing 
2       ALLEN  Engineering
7       JAMES  Finance    
*/

select emp_id, name, dept from company inner join department on company.id = department.emp_id union all select emp_id, name, dept from company left outer join department on company.id = department.emp_id;

/*
------  -----  -----------
1       PAUL   IT Billing 
2       ALLEN  Engineering
7       JAMES  Finance    
1       PAUL   IT Billing 
2       ALLEN  Engineering
        TEDDY             
        MARK              
        DAVID             
        KIM               
7       JAMES  Finance    
*/

