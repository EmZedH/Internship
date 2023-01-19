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

