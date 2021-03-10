DELIMITER //
#procedure for update contact
Create Procedure Update_contact( IN p_id INT,p_phonenumber varchar(20),p_emailid varchar(100))
# id, phonenumber, email will be added by user
BEGIN
UPDATE contact
SET
phonenumber = p_phonenumber WHERE id = p_id;
UPDATE contact 
SET 
    emailid = p_emailid
WHERE
    id = p_id;
END //
DELIMITER ;