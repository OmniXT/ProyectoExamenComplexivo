USE ComprasDW
GO


INSERT INTO DimDate
SELECT CAST(CONVERT(varchar(10), PK_Date, 112) AS INT) date_key, 
	   PK_Date 'date',
	   UPPER(SUBSTRING(DATENAME(month, PK_Date),1,3)) 'month_name',
	   CAST(FORMAT(PK_Date, 'yyyy') AS INT) 'year',
	   CAST(FORMAT(PK_Date, 'MM') AS INT) 'month',
	   CAST(FORMAT(PK_Date, 'dd') AS INT) 'day'
FROM TempDate