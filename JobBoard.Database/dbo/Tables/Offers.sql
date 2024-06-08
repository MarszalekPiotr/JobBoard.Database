CREATE TABLE [dbo].[Offers]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[CompanyAccountId] UNIQUEIDENTIFIER NOT NULL,
	[CategoryId] INT NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
	[Description] NVARCHAR(MAX)  NULL,
	[FormDefinitionJSON] NVARCHAR(MAX) NULL,
	[City] NVARCHAR(50)  NULL,
	[Location] NVARCHAR(200)  NULL,
	[WorkingMode] NVARCHAR(100) NOT NULL,
	[ContractType] NVARCHAR(100) NOT NULL,
	[MinSalary] INT NULL,
	[MaxSalary] INT NULL

	CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED ([Id] ASC)
	CONSTRAINT [FK_Offers_CompanyAccountId] FOREIGN KEY ([CompanyAccountId]) REFERENCES [dbo].[CompanyAccounts] ([Id]) ON DELETE CASCADE 
	---CONSTRAINT [FK_Offers_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([Id]) ON DELETE CASCADE 

	
)

GO

CREATE INDEX [IX_Offers_CompanyAccountId] ON [dbo].[Offers] ([CompanyAccountId])
GO
CREATE INDEX [IX_Offers_CategoryId] ON [dbo].[Offers] (CategoryId) 
