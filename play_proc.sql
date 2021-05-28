
UPDATE Employee SET title = 'manager' WHERE id = 1 ;
UPDATE Employee SET title = 'analyst' WHERE id = 2 ;
UPDATE Employee SET title = 'officer' WHERE id = 3 ;

select * from Employee ;

call control_title ( 2 ) ;

select * from Employee ;

call control_title ( 3 ) ;

select * from Employee ;
