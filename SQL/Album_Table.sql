create TABLE ALBUM (SONG_ID INT PRIMARY KEY, SONG_NAME TEXT, MILLISECONDS INT, ALBUM_ID INT);
insert into ALBUM values (1, 'AAA',111111,1),
(2,'BBB',222222,1),
(3,'CCC',333333,2),
(4,'DDD',321321,1),
(5,'EEE',312312,3),
(6,'FFF',100000,2),
(7,'GGG',100111,1),
(8,'HHH',123111,2),
(9,'III',80123,3);
.header on
.mode column

SELECT * FROM ALBUM;


/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
1        AAA        111111        1       
2        BBB        222222        1       
3        CCC        333333        2       
4        DDD        321321        1       
5        EEE        312312        3       
6        FFF        100000        2       
7        GGG        100111        1       
8        HHH        123111        2       
9        III        80123         3  
*/

INSERT INTO ALBUM VALUES (10,'JJJ',200000,1);
SELECT * FROM ALBUM;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
1        AAA        111111        1       
2        BBB        222222        1       
3        CCC        333333        2       
4        DDD        321321        1       
5        EEE        312312        3       
6        FFF        100000        2       
7        GGG        100111        1       
8        HHH        123111        2       
9        III        80123         3       
10       JJJ        200000        1   
*/

DELETE FROM ALBUM WHERE SONG_ID = 10;
SELECT * FROM ALBUM;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
1        AAA        111111        1       
2        BBB        222222        1       
3        CCC        333333        2       
4        DDD        321321        1       
5        EEE        312312        3       
6        FFF        100000        2       
7        GGG        100111        1       
8        HHH        123111        2       
9        III        80123         3 
*/

SELECT * FROM ALBUM WHERE ALBUM_ID > 1;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
3        CCC        333333        2       
5        EEE        312312        3       
6        FFF        100000        2       
8        HHH        123111        2       
9        III        80123         3   
*/

SELECT * FROM (SELECT * FROM ALBUM WHERE ALBUM_ID > 1) WHERE MILLISECONDS > 200000;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
3        CCC        333333        2       
5        EEE        312312        3  
*/

SELECT * FROM ALBUM WHERE MILLISECONDS BETWEEN 200000 AND 333333;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
2        BBB        222222        1       
3        CCC        333333        2       
4        DDD        321321        1       
5        EEE        312312        3     
*/

SELECT * FROM ALBUM WHERE MILLISECONDS LIKE '_3%';

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
3        CCC        333333        2       
*/

SELECT * FROM ALBUM WHERE MILLISECONDS LIKE '3%';

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
3        CCC        333333        2       
4        DDD        321321        1       
5        EEE        312312        3       
*/

SELECT * FROM ALBUM WHERE MILLISECONDS >= 222222 AND ALBUM_ID BETWEEN 2 AND 3;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
3        CCC        333333        2       
5        EEE        312312        3       
*/

UPDATE ALBUM SET SONG_NAME = 'JJJ' WHERE SONG_ID = 9;
SELECT * FROM ALBUM WHERE SONG_ID = 9;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
9        JJJ        80123         3       
*/

DELETE FROM ALBUM WHERE SONG_ID = 9;
SELECT * FROM ALBUM;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
1        AAA        111111        1       
2        BBB        222222        1       
3        CCC        333333        2       
4        DDD        321321        1       
5        EEE        312312        3       
6        FFF        100000        2       
7        GGG        100111        1       
8        HHH        123111        2   
*/

SELECT * FROM ALBUM LIMIT 4;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
1        AAA        111111        1       
2        BBB        222222        1       
3        CCC        333333        2       
4        DDD        321321        1       
*/

SELECT * FROM ALBUM LIMIT 5 OFFSET 2;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
3        CCC        333333        2       
4        DDD        321321        1       
5        EEE        312312        3       
6        FFF        100000        2       
7        GGG        100111        1       
*/

SELECT * FROM ALBUM ORDER BY ALBUM_ID ASC;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
1        AAA        111111        1       
2        BBB        222222        1       
4        DDD        321321        1       
7        GGG        100111        1       
3        CCC        333333        2       
6        FFF        100000        2       
8        HHH        123111        2       
5        EEE        312312        3       
*/

SELECT * FROM ALBUM ORDER BY MILLISECONDS DESC;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
3        CCC        333333        2       
4        DDD        321321        1       
5        EEE        312312        3       
2        BBB        222222        1       
8        HHH        123111        2       
1        AAA        111111        1       
7        GGG        100111        1       
6        FFF        100000        2       

*/

SELECT ALBUM_ID, COUNT(ALBUM_ID) FROM ALBUM GROUP BY ALBUM_ID;

/*
ALBUM_ID  COUNT(ALBUM_ID)
--------  ---------------
1         4              
2         3              
3         1              
*/

SELECT ALBUM_ID, SUM(MILLISECONDS) FROM ALBUM GROUP BY ALBUM_ID;

/*
ALBUM_ID  SUM(MILLISECONDS)
--------  -----------------
1         754765           
2         556444           
3         312312           
*/

SELECT ALBUM_ID, SUM(MILLISECONDS) FROM ALBUM GROUP BY ALBUM_ID HAVING SUM(MILLISECONDS)>400000;

/*
ALBUM_ID  SUM(MILLISECONDS)
--------  -----------------
1         754765           
2         556444           
*/

SELECT ALBUM_ID, COUNT(ALBUM_ID) FROM ALBUM GROUP BY ALBUM_ID HAVING COUNT(ALBUM_ID) > 2;

/*
ALBUM_ID  COUNT(ALBUM_ID)
--------  ---------------
1         4              
2         3              
*/

SELECT DISTINCT ALBUM_ID FROM ALBUM;

/*
ALBUM_ID
--------
1       
2       
3       
*/

SELECT * FROM ALBUM;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
1        AAA        111111        1       
2        BBB        222222        1       
3        CCC        333333        2       
4        DDD        321321        1       
5        EEE        312312        3       
6        FFF        100000        2       
7        GGG        100111        1       
8        HHH        123111        2       
*/

UPDATE ALBUM SET MILLISECONDS = MILLISECONDS - 100000 WHERE ALBUM_ID = 8;

/*
SONG_ID  SONG_NAME  MILLISECONDS  ALBUM_ID
-------  ---------  ------------  --------
1        AAA        111111        1       
2        BBB        222222        1       
3        CCC        333333        2       
4        DDD        321321        1       
5        EEE        312312        3       
6        FFF        100000        2       
7        GGG        100111        1       
8        HHH        23111         2       
*/

