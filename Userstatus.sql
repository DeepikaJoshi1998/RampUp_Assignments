DELIMITER //
# procedure for user status
CREATE PROCEDURE Userstatus()
BEGIN
Declare idvalue varchar(100);
Declare agevalue varchar(100);
Declare statusvalue varchar(100);
Declare cursor1 cursor for select p.id,p.age,p.status from user p;

open cursor1;
my_first_loop: LOOP
   fetch cursor1 into idvalue, agevalue, statusvalue;
   if agevalue<=18 Then #condition for child 
     update user pr set pr.status ='child' where pr.id=idvalue;
     commit;
     elseif agevalue>18 and agevalue<=60 Then  #condition for adult
     update user pr set pr.status ='adult' where pr.id=idvalue;
     commit;
     else #condition for senior
     update user pr set pr.status ='senior' where pr.id=idvalue;
     commit;
   end if;
end loop;
close cursor1;
#it automatically adds status value for the user
END //
DELIMITER ;