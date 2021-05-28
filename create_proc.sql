DROP PROCEDURE IF EXISTS control_title ;
DELIMITER $$
CREATE PROCEDURE control_title (IN param_id INT)
BEGIN

    DECLARE nb_manager INT DEFAULT 0 ;
    DECLARE err_no INT DEFAULT 0;
    DECLARE err_msg VARCHAR ( 70 ) ;    
    
    -- code of error handler    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
	    -- GET CURRENT DIAGNOSTICS CONDITION 1 errno = MYSQL_ERRNO;
	    -- SELECT err_no, err_msg  AS MYSQL_ERROR, MYSQL_MSG ;
	    -- SELECT err_no AS MYSQL_ERROR ;
	    SELECT err_msg AS MYSQL_MSG ;
	    ROLLBACK;
    END;
    

   START TRANSACTION;
		UPDATE Employee SET title = 'manager' WHERE id = param_id ;
		SELECT count(*) INTO nb_manager FROM Employee WHERE title = 'manager' ;
		IF nb_manager > 2 THEN
		  SET err_no = 45000 ;
		  SET err_msg = 'Trop de manager tue toute entreprise' ;
		  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trop de manager tue toute entreprise';
		  -- ROLLBACK will be done in error handler ;
		END IF ;
	COMMIT;
	
END$$
DELIMITER ;
