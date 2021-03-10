DELIMITER //
#Procedure to update user table
Create Procedure Update_user( IN p_id INT, IN p_name varchar(20),p_age varchar(100))
#id, name, age added by the user
BEGIN
UPDATE user
SET
name = p_name WHERE id = p_id;
UPDATE user 
SET 
    age = p_age
WHERE
    id = p_id;
END //
DELIMITER ;