## Description
This part of the demo shows how to catch a change in a DB table and send a message to Rabbit MQ topic exchange
![EI Demo2](EIdemo2.png)

## Pre tasks
### Create Table and Trigger
1. Create the buffer table (NotifierEmployee)[(source)](createNotifierEmployee.sql) which contains the notification of the changes in the Employee table and is loaded by the triggers
2. Create the trigger *AfterEmployeeInsert* [(source)](insertTrigger.sql) and *AfterEmployeeUpdate* [(source)](updateTrigger.sql); the triggers insert a row in the NotifierEmployee table after an insert or update in the Employee table
3. Add 2 queries and 2 resource to the data service EmployeeDS in order to retrieve and delete the notification in the NotifierEmployee table;get here the [(updated version:)](EmployeeDS.xml).


## Demo
1. Create the [(NotifierEmployeeEP)](NotifierEmployeeEP.xml).
2. Create the [(RabbitMQEP)](RabbitMQEP.xml). This endpoint sends data to the Rabbit MQ exchange *EmployeeNotifier* and routingKey *ChangeEmployeeNotify*.
3. Create a new proxy Proxy Service [(EmployeeNotifierPollingProxy)](EmployeeNotifierPollingProxy.xml).

## Test the solution
1. Create the exchange *EmployeeNotifier* in RabbitMQ running the following command
```
sh run.sh ChangeEmployeeNotify
```
2. Run one of the cases of the main demo to populate the *NotifierEmployee* buffer table
3. Run the proxy service *EmployeeNotifierPollingProxy.xml* for example using the following command:
```
curl --location --request POST 'localhost:8280/services/EmployeeNotifierPollingProxy' --header 'Accept: application/json'
```
