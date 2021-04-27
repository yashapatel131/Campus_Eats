#Trigger to capitalize first letter of degree
DROP TRIGGER IF EXISTS faculty_before_update;

DELIMITER //
CREATE TRIGGER faculty_before_update
	BEFORE UPDATE ON faculty
	FOR EACH ROW 
BEGIN
	SET NEW.highest_degree = CONCAT(UCASE(LEFT(NEW.highest_degree, 1)),SUBSTRING(NEW.highest_degree, 2));
END//

DELIMITER ;

UPDATE faculty
SET highest_degree = 'bachelor'
WHERE person_id = 1;

SELECT person_id, highest_degree
FROM faculty
WHERE person_id = 1;
