USE [VacationDB_PedroLeite]
GO

-- QUESTION 15

SELECT
	vr.[RequestID] AS 'Request Form nº.',
	vr.[RequestDate] AS 'Request Date',
	vr.[ApprovalDate] AS 'Approval Date',
	CONCAT_WS('-', mgco.[CountryCode], mgct.[CityCode], mgd.[DepartmentCode], mg.[EmployeeID]) AS 'Manager Code',
	CONCAT_WS('-', co.[CountryCode], ct.[CityCode], d.[DepartmentCode], e.[EmployeeID]) AS 'Employee Code',
	mg.[EmployeeName] AS 'Manager Name',
	e.[EmployeeName] AS 'Employee Name',
	d.[DepartmentName] AS 'Department Name',
	vt.[VacationPeriod] AS 'Periods',
	vt.[StartDate] AS 'Start Date',
	vt.[EndDate] AS 'End Date',
	vt.[TotalDays] AS 'Total Days',
	CASE
		WHEN vt.[ApprovalStatus] = 1 THEN 'Yes'
		WHEN vt.[ApprovalStatus] = 0 THEN 'No'
	END AS 'Approved?'
FROM
	[dbo].[VacationsRequest] AS vr
INNER JOIN
	[dbo].[Employees] AS e
ON
	vr.[EmployeeID] = e.[EmployeeID]
INNER JOIN
	[dbo].[Employees] AS mg
ON
	e.[VacationsManagement] = mg.[EmployeeID]
INNER JOIN
	[dbo].[Departments] AS d
ON
	e.[DepartmentID] = d.[DepartmentID]
INNER JOIN
	[dbo].[Cities] AS ct
ON
	e.[CityID] = ct.[CityID]
INNER JOIN
	[dbo].[Countries] AS co
ON
	ct.[CountryID] = co.[CountryID]
INNER JOIN
	[dbo].[Departments] AS mgd
ON
	mg.[DepartmentID] = mgd.[DepartmentID]
INNER JOIN
	[dbo].[Cities] AS mgct
ON
	mg.[CityID] = mgct.[CityID]
INNER JOIN
	[dbo].[Countries] AS mgco
ON
	mgco.[CountryID] = mgct.[CountryID]
INNER JOIN
	[dbo].[VacationsTime] AS vt
ON
	vt.[RequestID] = vr.[RequestID];
GO