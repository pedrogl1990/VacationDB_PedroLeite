USE [VacationDB_PedroLeite]
GO

-- QUESTION 19

SELECT
	e.[EmployeeName] AS 'Employees Name',
	d.[DepartmentName] AS 'Department Name',
	ct.[CityName] AS 'City Name'
FROM
	[dbo].[Employees] AS e
INNER JOIN
	[dbo].[Departments] AS d
ON
	e.[DepartmentID] = d.[DepartmentID]
INNER JOIN
	[dbo].[Cities] AS ct
ON
	e.[CityID] = ct.[CityID]
WHERE
	d.[DepartmentName] IN ('Financeiro', 'Sistemas de Informação', 'Administração', 'Recursos Humanos')
ORDER BY
	ct.[CityName],
	e.[EmployeeName];
GO

-- QUESTION 20

SELECT
	UPPER(e.[EmployeeName]) AS 'Employees Name',
	CONCAT_WS('-', co.[CountryCode], ct.[CityCode], d.[DepartmentCode], e.[EmployeeID]) AS 'Employee Code',
	ct.[CityName] AS 'Localidade'
FROM
	[dbo].[Employees] AS e
INNER JOIN
	[dbo].[Cities] AS ct
ON
	e.[CityID] = ct.[CityID]
INNER JOIN
	[dbo].[Countries] AS co
ON
	ct.[CountryID] = co.[CountryID]
INNER JOIN
	[dbo].[Departments] AS d
ON
	e.[DepartmentID] = d.[DepartmentID]
WHERE
	ct.[CityName] IN ('Braga', 'Lisboa', 'Porto')
ORDER BY
	ct.[CityName],
	e.[EmployeeName];
GO

-- QUESTION 21

SELECT
	[StartDate] AS 'Vacations Start Date',
	[EndDate] AS 'Vacations End Date', 
	DATEDIFF(day, [StartDate], [EndDate]) AS 'Calculated Days',
	[TotalDays] AS 'Registered Days'
FROM
	[dbo].[VacationsTime];
GO

-- QUESTION 22

SELECT * FROM [dbo].[Departments];

-- QUESTION 23

SELECT 
	COUNT(e.[EmployeeID]) AS 'Number of Employees',
	ct.[CityName] AS 'Localidade'
FROM
	[dbo].[Cities] AS ct
INNER JOIN
	[dbo].[Employees] AS e
ON
	ct.[CityID] = e.[CityID]
GROUP BY
	ct.[CityName];
GO

-- QUESTION 24

SELECT 
	d.[DepartmentName] AS 'Department'
FROM
	[dbo].[Departments] AS d
LEFT OUTER JOIN
	[dbo].[Employees] AS e
ON
	d.[DepartmentID] = e.[DepartmentID]
WHERE
	e.[DepartmentID] IS NULL;
GO
