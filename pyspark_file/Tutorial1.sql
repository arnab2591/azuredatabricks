-- Databricks notebook source
-- DBTITLE 1,Using SQL command to create DB and table


-- COMMAND ----------

CREATE DATABASE IF NOT EXISTS Tutorial

-- COMMAND ----------

use Tutorial

-- COMMAND ----------

create table student
(
id int,
name string
)

-- COMMAND ----------

insert into student
select 1 as id,'Arnab' as name

-- COMMAND ----------

select * from student

-- COMMAND ----------

-- DBTITLE 1,Use python code to execute same sql code
-- MAGIC %python
-- MAGIC spark.sql("CREATE DATABASE IF NOT EXISTS Tutorial2")

-- COMMAND ----------

-- MAGIC %python
-- MAGIC spark.sql("use Tutorial2")

-- COMMAND ----------

-- MAGIC %python
-- MAGIC spark.sql("""create table student2
-- MAGIC (
-- MAGIC id int,
-- MAGIC name string
-- MAGIC )""")

-- COMMAND ----------

-- MAGIC %python
-- MAGIC spark.sql("""insert into student2
-- MAGIC select 1 as id,'Arnab' as name""")

-- COMMAND ----------

-- DBTITLE 1,It will show us only column name and type
-- MAGIC %python
-- MAGIC spark.sql("select * from student2")

-- COMMAND ----------

-- DBTITLE 1,It will show us table value
-- MAGIC %python
-- MAGIC spark.sql("select * from student2").show()

-- COMMAND ----------

-- MAGIC %python
-- MAGIC spark.sql("select * from student2").collect()

-- COMMAND ----------


