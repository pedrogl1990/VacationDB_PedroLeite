USE [VacationDB_PedroLeite]
GO

-- QUESTION 17

INSERT INTO [dbo].[Departments]
(
	[DepartmentName],
	[DepartmentCode]
)
VALUES
(
	'Comercial',
	'CM'
),
(
	'Gestão',
	'GE'
),
(
	'Administração',
	'AD'
);
GO

-- QUESTION 26


INSERT INTO [dbo].[Departments]
(
	[DepartmentName],
	[DepartmentCode]
)
VALUES
(
	'Financeiro',
	'FI'
);
GO

INSERT INTO [dbo].[Cities]
(
	[CountryID],
	[CityName],
	[CityCode]
)
VALUES
(
	1,
	'Lisboa',
	'LIS'
),
(
	1,
	'Braga',
	'BRG'
);
GO

INSERT INTO [dbo].[Employees]
(
	[DepartmentID],
	[CityID],
	[CompanyPositionsID],
	[VacationsManagement],
	[EmployeeName]
)
VALUES
(
	1,
	1,
	1,
	NULL,
	'Mário Ramos'
),
(
	6,
	2,
	2,
	3,
	'Rui Pina de Oliveira'
),
(
	5,
	3,
	2,
	3,
	'Maria Teresa Vale dos Santos'
);
GO

INSERT INTO [dbo].[VacationsRequest]
(
	[EmployeeID],
	[RequestDate],
	[ApprovalDate]
)
VALUES
(
	4,
	'2019-02-26',
	'2019-03-06'
),
(
	5,
	'2019-03-04',
	'2019-03-13'
);
GO

INSERT INTO [dbo].[VacationsTime]
(
	[RequestID],
	[VacationPeriod],
	[StartDate],
	[EndDate],
	[TotalDays],
	[ApprovalStatus]
)
VALUES
(
	2,
	1,
	'2019-04-15',
	'2019-04-19',
	6,
	0
),
(
	2,
	2,
	'2019-07-29',
	'2019-08-21',
	27,
	1
),
(
	3,
	1,
	'2019-02-04',
	'2019-02-15',
	NULL,
	1
),
(
	3,
	2,
	'2019-07-29',
	'2019-07-31',
	NULL,
	1
),
(
	3,
	3,
	'2019-12-23',
	'2019-12-31',
	NULL,
	0
);
GO


