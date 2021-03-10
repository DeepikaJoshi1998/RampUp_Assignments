DELIMITER //
# procedure to update address
Create Procedure Update_address( IN p_id INT,p_city varchar(100),p_state varchar(100),p_country varchar(100))
#id,city,state,country will be added by user
BEGIN
UPDATE address 
SET
city = p_city WHERE id = p_id;
UPDATE address 
SET 
    state = p_state
WHERE
    id = p_id;
UPDATE address 
SET 
    country = p_country
WHERE
    id = p_id;
END //
DELIMITER ;