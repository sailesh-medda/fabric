-- Fabric notebook source

-- METADATA ********************

-- META {
-- META   "kernel_info": {
-- META     "name": "synapse_pyspark"
-- META   },
-- META   "dependencies": {
-- META     "lakehouse": {
-- META       "default_lakehouse": "11a150db-10cc-4f67-8db4-b148454121fd",
-- META       "default_lakehouse_name": "practice1",
-- META       "default_lakehouse_workspace_id": "767c9d13-c67f-4373-9321-891de542fbc2"
-- META     },
-- META     "warehouse": {
-- META       "default_warehouse": "8a9a9c81-6e4c-9cb1-47ad-7de1d1fbd653",
-- META       "known_warehouses": [
-- META         {
-- META           "id": "8a9a9c81-6e4c-9cb1-47ad-7de1d1fbd653",
-- META           "type": "Datawarehouse"
-- META         }
-- META       ]
-- META     }
-- META   }
-- META }

-- CELL ********************

-- Welcome to your new notebook
-- Type here in the cell editor to add code!
%fs ls


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

%fs 
ls "abfss://demo1@onelake.dfs.fabric.microsoft.com/practice1.Lakehouse/Files/bigmartsales.csv"


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************


!ls `Files/`


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

mssparkutils.fs.ls("abfss://demo1@onelake.dfs.fabric.microsoft.com/practice1.Lakehouse/Files/")


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

df = spark.read.format("csv").option("header","true").load("Files/bigmartsales.csv")
# df now is a Spark DataFrame containing CSV data from "Files/bigmartsales.csv".
display(df)

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

mssparkutils.help()

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

mssparkutils.fs.ls("abfss://demo1@onelake.dfs.fabric.microsoft.com/test1.datawarehouse/Tables/sample/test1")

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql
-- MAGIC create DATABASE sample1

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql 
-- MAGIC SHOW DATABASES

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql
-- MAGIC CREATE DATABASE IF NOT EXISTS test_database;


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

print("saile")

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql
-- MAGIC CREATE OR REPLACE TABLE my_table (
-- MAGIC     id INT,
-- MAGIC     name STRING,
-- MAGIC     age INT
-- MAGIC )
-- MAGIC USING DELTA;


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

!ls "test1.datawarehouse/Tables/sample/test1"

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql
-- MAGIC create table sample2
-- MAGIC (fisrtname int,
-- MAGIC lastname int);

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql
-- MAGIC show SCHEMA;


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%pyspark
-- MAGIC df = spark.sql("SELECT * FROM practice1.my_table LIMIT 1000")
-- MAGIC display(df)
-- MAGIC df.printSchema

-- METADATA ********************

-- META {
-- META   "language": "python",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%pyspark
-- MAGIC 
-- MAGIC df.printSchema()


-- METADATA ********************

-- META {
-- META   "language": "python",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%pyspark
-- MAGIC df = spark.read.format("csv").option("header","true").load("Files/bigmartsales.csv")
-- MAGIC # df now is a Spark DataFrame containing CSV data from "Files/bigmartsales.csv".
-- MAGIC display(df)

-- METADATA ********************

-- META {
-- META   "language": "python",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

CREATE TABLE test2;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

USE practice1;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

create or REPLACE table test2
(f int, l int, num int);

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

DESCRIBE FORMATTED test2;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

DESCRIBE EXTENDED test2;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

insert into test2
values (1,2,3445),(234,4,5656);

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

desc DETAIL test2;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%pyspark
-- MAGIC notebookutils.fs.ls("abfss://767c9d13-c67f-4373-9321-891de542fbc2@onelake.dfs.fabric.microsoft.com/11a150db-10cc-4f67-8db4-b148454121fd/Tables/test2")

-- METADATA ********************

-- META {
-- META   "language": "python",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

select count(*) from csv. `abfss://demo1@onelake.dfs.fabric.microsoft.com/practice1.Lakehouse/Files/bigmartsales.csv`

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%pyspark
-- MAGIC df = spark.read.format("csv").option("header","true").load("Files/bigmartsales.csv")
-- MAGIC # df now is a Spark DataFrame containing CSV data from "Files/bigmartsales.csv".
-- MAGIC display(df)

-- METADATA ********************

-- META {
-- META   "language": "python",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

CREATE OR REPLACE TABLE test3 
LOCATION "abfss://demo1@onelake.dfs.fabric.microsoft.com/practice1.Lakehouse/Files"
AS select * from csv. `abfss://demo1@onelake.dfs.fabric.microsoft.com/practice1.Lakehouse/Files/bigmartsales.csv`

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

INSERT INTO test3
VALUES
(FDN15,17.5,Low Fat,0.016760075,Meat,141.618,OUT049,1999,Medium,Tier ,Supermarket Type1,2097.27);

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

DESCRIBE EXTENDED test3;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

INSERT INTO test3 
(_c0,_c1, _c2, _c3, _c4, _c5, _c6, _c7, _c8, _c9, _c10, _c11)
VALUES 
('FDN15', 17.5, 'Low', 0.016760075, 'Meat', 141.618, 'OUT049', 1999, 'Medium', 'Tier', 'Supermarket', 2097.27);


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

select * from test3

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

DELETE FROM test3
WHERE _c3 = "0";

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

select * from test3

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

select count(*)
from test3

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

select * from test3;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

DROP TABLE  test3;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

DESCRIBE HISTORY test3

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

SELECT * FROM test3@v7;


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************


create table testfut
(f int, l int);

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************


insert into testfut
values 
(4,42),(5,57),(6,632),(12,131),(4,42),(5,57),(6,632),(12,131),(4,42),(5,57),(6,632),(12,131),(4,42),(5,57),(6,632),(12,131);

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

DESCRIBE HISTORY  testfut

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

select * from testfut@@v1

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

SELECT *
FROM practice1.test3
FOR SYSTEM_TIME AS OF '2025-03-26T02:43:02Z'; --March 13, 2024 at 7:39:35.28 PM UTC


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

restore tanle

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }
