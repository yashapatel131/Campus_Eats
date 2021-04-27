#Procedure for Inserting a Restaurant
DROP PROCEDURE IF EXISTS insert_restaurant;
DELIMITER //

CREATE PROCEDURE insert_restaurant
(	restaurant_id_param		INT,
	location_param   		VARCHAR(75),
	restaurant_name_param	VARCHAR(75),
	schedule_param			VARCHAR(75),
	website_param			VARCHAR(75)
)
BEGIN
	DECLARE	error_handler	BOOLEAN;
	DECLARE CONTINUE HANDLER FOR 1062
		SET error_handler = TRUE;

	INSERT INTO restaurant (restaurant_id, location, restaurant_name, schedule, website)
		VALUES (restaurant_id_param, location_param, restaurant_name_param, schedule_param, website_param);

	IF error_handler = TRUE THEN
		SELECT "Row not inserted. Enter unique value for Restaurant ID." as message;
	ELSE
		SELECT "Row successfully inserted" as message;
	END IF;
END//

DELIMITER ;

#good data
CALL insert_restaurant(101, "123 Marina Drive, Charlotte", "Chic fil A", "11am - 10pm", "www.chicfila.com");
CALL insert_restaurant(102, "764 Ocean Drive, Charlotte", "Subway", "11am-11pm", NULL);

#bad data
CALL insert_restaurant(102, "764 Ocean Drive, Charlotte", "Subway", "11am-10pm", NULL);

#showing result and cleaning up
SELECT * FROM restaurant WHERE restaurant_id = 101;
SELECT * FROM restaurant WHERE restaurant_id = 102;

DELETE FROM restaurant WHERE restaurant_id = 101;
DELETE FROM restaurant WHERE restaurant_id = 102;


#Function for retreiving Driver_id
DROP FUNCTION IF EXISTS get_driver_id;
DELIMITER //

CREATE FUNCTION get_driver_id
(	driver_name_param VARCHAR(50)
)
RETURNS INT
DETERMINISTIC READS SQL DATA
BEGIN
	DECLARE driver_id_var INT;
	
    SELECT driver_id
		INTO driver_id_var
	FROM driver d, student s, person p
	WHERE d.student_id = s.student_id
		AND s.person_id = p.person_id
        AND person_name = driver_name_param;

	RETURN(driver_id_var);
END//

DELIMITER ;

SELECT driver_id
	FROM driver d, student s, person p
	WHERE d.student_id = s.student_id
		AND s.person_id = p.person_id
		AND driver_id = get_driver_id('Leopoldo Welch');
		

#Function for retreiving Restaurant_id
DROP FUNCTION IF EXISTS get_res_id;
DELIMITER //

CREATE FUNCTION get_res_id
(	res_name_param VARCHAR(50)
)
RETURNS INT
DETERMINISTIC READS SQL DATA
BEGIN
	DECLARE res_id_var INT;
	
    SELECT restaurant_id
		INTO res_id_var
	FROM restaurant
	WHERE restaurant_name = res_name_param;

	RETURN(res_id_var);
END//

DELIMITER ;

SELECT restaurant_id
	FROM restaurant
	WHERE restaurant_id = get_res_id('Huels-Considine');
	

#Function for obtaining Restaurant_rating
DROP FUNCTION IF EXISTS get_restaurants_rating;
DELIMITER //

CREATE FUNCTION get_restaurants_rating
(	restaurants_id_param INT
)
RETURNS DECIMAL(9,2)
DETERMINISTIC READS SQL DATA
BEGIN
	DECLARE restaurants_rating_var DECIMAL(9,2);
  
	SELECT AVG(stars)
		INTO restaurants_rating_var
	FROM rating r, `order` o
	WHERE r.o_id = o.order_id
		AND o.restaurant_id =  restaurants_id_param
    GROUP BY restaurant_id;
	
	RETURN restaurants_rating_var;
END//

DELIMITER ;

SELECT restaurant_id, get_restaurants_rating(restaurant_id) AS avg_rating
FROM restaurant;


#Function for obtaining Average restaurant rating
DROP FUNCTION IF EXISTS get_avg_res_rating;
DELIMITER //

CREATE FUNCTION get_avg_res_rating
(	res_param INT
)
RETURNS DECIMAL(9,2)
DETERMINISTIC READS SQL DATA
BEGIN
	DECLARE avg_var DECIMAL(9,2);
  
	SELECT AVG(stars)
		INTO avg_var
	FROM rating r, `order` o, restaurant rr
	WHERE r.o_id = o.order_id
		AND o.restaurant_id = rr.restaurant_id
		AND rr.restaurant_id = res_param
	GROUP BY rr.restaurant_id;
  
  RETURN avg_var;
END//

DELIMITER ;

SELECT restaurant_id,
       get_avg_res_rating(39) AS avg_rating
FROM restaurant rr
WHERE restaurant_id = 39;


#Function for obtaining Average Driver rating
DROP FUNCTION IF EXISTS get_avg_dri_rating;
DELIMITER //

CREATE FUNCTION get_avg_dri_rating
(	dri_param INT
)
RETURNS DECIMAL(9,2)
DETERMINISTIC READS SQL DATA
BEGIN
	DECLARE avg_var DECIMAL(9,2);
  
	SELECT AVG(stars)
		INTO avg_var
	FROM rating r, `order` o, driver d
	WHERE r.o_id = o.order_id
		AND o.driver_id = d.driver_id
		AND d.driver_id = dri_param
	GROUP BY d.driver_id;
  
  RETURN avg_var;
END//

DELIMITER ;

SELECT driver_id,
       get_avg_dri_rating(8) AS avg_rating
FROM driver d
WHERE driver_id = 8;