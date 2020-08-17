CREATE DATABASE Lab10
DROP DATABASE Lab10

USE AdventureWorks2012
SELECT*INTO Lab10.dbo.WorkOrder FROM Production.WorkOrder

USE Lab10
SELECT*INTO WordOrderIX FROM WorkOrder

SELECT * FROM WorkOrder
SELECT *  FROM WordOrderIX

CREATE INDEX IX_WorkOrderID ON WordOrderIX(WorkOrderID)

SELECT*FROM WorkOrder where WorkOrderID = 7200
SELECT*FROM WordOrderIX where WorkOrderID =7200