﻿CREATE TABLE [dbo].[CompanyAccounts]
(
	[Id] UNIQUEIDENTIFIER NOT NULL  DEFAULT NEWID(),
	[Name] NVARCHAR(100) NOT NULL,
	[CreationDate] DATETIMEOFFSET NOT NULL,
	[Description] NVARCHAR(1000),
	[ContactEmail] NVARCHAR(50),
	[NIP] NVARCHAR(50) NOT NULL,
	CONSTRAINT [PK_CompanyAccounts] PRIMARY KEY CLUSTERED ([Id] ASC) 

)
