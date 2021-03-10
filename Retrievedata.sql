DELIMITER //
CREATE PROCEDURE Retreive()
  BEGIN
    SELECT user.id,user.name,user.age,user.status,address.city,address.state,address.country,contact.phonenumber,contact.emailid
    FROM user
    INNER JOIN address ON address.id = user.id    #join using foreign key
    INNER JOIN contact ON contact.id = user.id;
  END //
DELIMITER ;