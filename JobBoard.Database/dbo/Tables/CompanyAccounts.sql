﻿CREATE TABLE [dbo].[CompanyAccounts]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
	[CreationDate] DATETIMEOFFSET NOT NULL,
	[Description] NVARCHAR(1000),
	[ContactEmail] NVARCHAR(50),
	CONSTRAINT [PK_CompanyAccounts] PRIMARY KEY CLUSTERED ([Id] ASC) 

)
