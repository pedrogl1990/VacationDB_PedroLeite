USE [VacationDB_PedroLeite]
GO

-- QUESTION 25

UPDATE 
	[dbo].[Employees]
SET 
	[EmployeeName] = 'Carolina Lima de França'
WHERE 
	[EmployeeID] = 1;
GO

UPDATE 
	[dbo].[Departments]
SET  
	[DepartmentCode] = 'SI', [DepartmentName] = 'Sistemas de Informação'
WHERE 
	[DepartmentID] = 2;
GO

UPDATE 
	[dbo].[VacationsTime]
SET 
	[EndDate] = '2019-12-31', [TotalDays] = 7, [ApprovalStatus] = 1
WHERE
	[VacationsTimeID] = 3;
GO
