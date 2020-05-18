# DemoEI_File_RabbitMQ_DB
## Description
I this Demo the final goal is to show an integration between different sources (file, rabbitmq queue, service) to load data in a Database; the flow is able to detect whether a record is already existing and update it, or insert a new one
Input data is a Json file (Employee.json) and target is a table (Employees) in MySQL

![EI Demo](Image.png)

## Prerequisites
RabbitMQ

MySQL

## Pre Tasks
### Configure MySQL
- create Database/schema: create schema Employees
- create Table Employees: create table Employees under schema Employees using *createEmployeesTable.sql*
- import mysql library in *<EI_HOME>lib* : *mysql-connector-java-5.1.42-bin.jar*
### Configure RabbitMQ
- import rabbitmq libraries in *<EI_HOME>lib* : *amqp-client-5.9.0.jar*
- configure RabbitMQ AMQP transport in *<EI_HOME>/conf/axis2/axis2.xml; for example:
```
<transportReceiver name="rabbitmq" class="org.apache.axis2.transport.rabbitmq.RabbitMQListener">
        <parameter name="AMQPConnectionFactory" locked="false">
            <parameter name="rabbitmq.server.host.name" locked="false">localhost</parameter>
            <parameter name="rabbitmq.server.port" locked="false">5672</parameter>
            <parameter name="rabbitmq.server.user.name" locked="false">guest</parameter>
            <parameter name="rabbitmq.server.password" locked="false">guest</parameter>
            <parameter name="rabbitmq.connection.retry.interval" locked="false">10000</parameter>
            <parameter name="rabbitmq.connection.retry.count" locked="false">5</parameter>
        </parameter>
    </transportReceiver>
...

<transportSender name="rabbitmq" class="org.apache.axis2.transport.rabbitmq.RabbitMQSender"/>
```
### Configure Files
- create the following folders, where *<FILE_HOME>* is the base location: *<FILE_HOME>/failure*, *<FILE_HOME>/in*, *<FILE_HOME>/done*

## Import or configure data services and sequences
### import (or create) data services: 
- EmployeeDS ![source] (SupportingSeq&EP/EmployeesDS.xml)
### import supporting sequences:
- prepareQueryCall
- postCall
### import or configure EP:
- GetEmployeeAddressEP (type: Address Enpoint)

