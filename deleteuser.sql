DELIMITER //
Create Procedure Deleteuser( IN u_id INT) #u_id entered by user
BEGIN
     DELETE FROM address
    WHERE ID=u_id;
DELETE FROM contact 
WHERE
    ID = u_id;
DELETE FROM user 
WHERE
    ID = u_id;
    END //
DELIMITER ;