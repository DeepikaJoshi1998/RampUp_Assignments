Schema: Userprofile

Tables: user(id,name,age,status)
        contact(id,mobilenumber,emailid) #id is foreign key reference user table
        address(id,city,state,country)  #id is foreign key reference user table

Stored Procedures: Inserttable(for inserting data to all tables, a form is open we have to only enter data after calling it.)
                   Retreive(for reading the data we have to only call the procedure)
                   Update_address, Update_contact, Update_user(for updating data directly entering into the form after calling the procedure.)
                   Deleteuser(for deleting the data for selected user, a form is open we have to enter the id and data deletes after calling it.)
                   Userstatus(for adding user status in user table, we have to only call it automatically add status to table.)
