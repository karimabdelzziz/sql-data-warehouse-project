/*
===================================================================
Create Database and Schemas
===================================================================
Script Purpose :
   this script creates a new database named "DataWarehouse" after checking it is already exists.
   If the database exists , it is dropped and recreated Additionally, the script sets up three schemas 
   within the database : 'bronze' , 'silver' , and 'gold'.
Warning:
   Running this script will drop the entire "DataWarehouse" database if it exists.
   All data in the database will be permanently deleted. proceed with caution 
   and ensure you have proper backups before running the script.
*/

USE master;
Go
IF exists(Select 1 from sys.databases where name = 'DataWarehouse')
Begin
      Alter Database DataWarehouse Set SINGLE_USER with ROLLBACK IMMEDIATE;
      Drop Database DataWarehouse;
End;
GO

-- create the "DataWarehous" database
Create database DataWarehouse;
Go
USE DataWarehouse;
GO
Create Schema bronze;
GO
Create Schema silver;
GO
Create Schema gold;
