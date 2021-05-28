DELIMITER $$

DROP TRIGGER IF EXISTS `update_data` $$
CREATE TRIGGER `update_data` AFTER UPDATE on `Employee`
FOR EACH ROW 
BEGIN
	IF (NEW.title != OLD.title) THEN 
		INSERT INTO audit
		(`data_id`,`field`,`old_value`,`new_value`,`modified`)
		VALUES (NEW.id, "title", OLD.title, NEW.title, NOW());
	END IF;
END$$

DELIMITER ;
