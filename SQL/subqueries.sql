select name from (select name,1 as type from tracks where name like 'fa%' union select * from (select name,2 as type from tracks where name like '%fa%' except select name,2 as type from tracks where name like 'fa%')) order by type;