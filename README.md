# DemoEI_File_RabbitMQ_DB
## Description
I this Demo the final goal is to show an integration between different sources (file, rabbitmq queue, service) to load data in a Database; the flow is able to detect whether a record is already existing and update it, or insert a new one
Input data is a Json file (Employee.json) and target is a table (Employees) in MySQL

***Add picture***

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
