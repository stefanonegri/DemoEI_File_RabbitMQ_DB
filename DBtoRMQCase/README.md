## Description
This part of the demo shows how to catch a change in a DB table and send a message to Rabbit MQ topic exchange
![EI Demo2](EIdemo2.png)

## Pre tasks
### Create Table and Trigger
1. Create the buffer table (NotifierEmployee)[(source)](createNotifierEmployee.sql) which contains the notification of the changes in the Employee table and is loaded by the triggers
2. Create the trigger *AfterEmployeeInsert* and *AfterEmployeeUpdate*
