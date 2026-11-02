CREATE TABLE computer_store1( 
    Pro_Id INTEGER PRIMARY KEY, 
    Pro_name VARCHAR(255), 
    Pro_price_$ INTEGER
);

INSERT INTO computer_store1(Pro_Id, Pro_name, Pro_price_$)
Values (1, 'RAM' , 10),
       (2, 'ROM' , 15),
       (3, 'Desktop' , 50),
       (4, 'Mouse' , 20 ),
       (5, 'Keyboard' , 16)
       ;

SELECT * FROM computer_store1
WHERE Pro_name LIKE'%ROM%' AND Pro_price_$ = 15 ;

SELECT * FROM computer_store1 
WHERE Pro_Id=3 OR Pro_price_$ = 16;

SELECT * FROM computer_store1
WHERE Pro_price_$ = (SELECT MIN(Pro_price_$) FROM computer_store1);

SELECT * FROM computer_store1
WHERE Pro_price_$ = (SELECT MAX(Pro_price_$) FROM computer_store1) ;

UPDATE computer_store1 SET Pro_price_$= 60 WHERE Pro_name LIKE 'D%';

SELECT * FROM computer_store1
WHERE Pro_name= 'Desktop';

DELETE FROM computer_store1 WHERE Pro_name LIKE '%e';

SELECT * FROM computer_store1;