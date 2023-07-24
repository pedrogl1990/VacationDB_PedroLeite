USE [VacationDB_PedroLeite]
GO

-- QUESTION 14

INSERT INTO [dbo].[Countries]
(
	[CountryName],
	[CountryCode]
)
VALUES
(
	'Portugal',
	'PT'
);
GO

INSERT INTO [dbo].[Departments]
(
	[DepartmentName],
	[DepartmentCode]
)
VALUES
(
	'Recursos Humanos',
	'HR'
),
(
	'Tecnologias da Informação',
	'TI'
);
GO

INSERT INTO [dbo].[CompanyPositions]
(
	[PositionName]
)
VALUES
(
	'Manager'
),
(
	'Employee'
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
	'Porto',
	'PRT'
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
	'Carolina Franco de Lima'
),
(
	2,
	1,
	2,
	1,
	'Maria Antónia de Castro e Sá'
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
	2,
	'2019-02-25',
	'2019-03-04'
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
	1,
	1,
	'2019-03-04',
	'2019-03-08',
	5,
	1
),
(
	1,
	2,
	'2019-07-29',
	'2019-08-16',
	15,
	1
),
(
	1,
	3,
	'2019-12-23',
	'2020-01-03',
	8,
	0
);
GO