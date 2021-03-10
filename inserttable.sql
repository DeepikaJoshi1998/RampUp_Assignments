DELIMITER //
CREATE PROCEDURE Inserttable(id int,name varchar(100),age varchar(100),phonenumber varchar(20), emailid varchar(100),city varchar(100),state varchar(100),country varchar(100))
    BEGIN
         INSERT INTO user(id,name,age) VALUES(id,name,age); #insert entered id name age in user table
         INSERT INTO address(id,city,state,country) VALUES(id,city,state,country);#insert entered data in address table
         INSERT INTO contact(id,phonenumber,emailid) VALUES(id,phonenumber,emailid);#insert entered data in contact table
END //
DELIMITER ;