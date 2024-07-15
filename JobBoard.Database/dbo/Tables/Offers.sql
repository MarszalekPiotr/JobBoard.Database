CREATE TABLE [dbo].[Offers]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[CompanyAccountId] INT NOT NULL,
	[CategoryId] INT NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
	[Description] NVARCHAR(MAX)  NULL,
	[FormDefinitionJSON] NVARCHAR(MAX) NULL,
	[CityId] INT  NULL,
	[Address] NVARCHAR(200)  NULL,
	[WorkingMode] INT  NOT NULL,
	[ContractType] INT NOT NULL,
	[MinSalary] INT NULL,
	[MaxSalary] INT NULL,
	[OfferStatus] INT NOT NULL

	CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED ([Id] ASC)
	CONSTRAINT [FK_Offers_CompanyAccountId] FOREIGN KEY ([CompanyAccountId]) REFERENCES [dbo].[CompanyAccounts] ([Id]) ON DELETE CASCADE 
	CONSTRAINT [FK_Offers_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([Id]) ON DELETE CASCADE 
	CONSTRAINT [FK_Offers_CityId] FOREIGN KEY ([CityId]) REFERENCES [dbo].[Cities] ([Id]) ON DELETE CASCADE 
	
)

GO

CREATE INDEX [IX_Offers_CompanyAccountId] ON [dbo].[Offers] ([CompanyAccountId])
GO
CREATE INDEX [IX_Offers_CategoryId] ON [dbo].[Offers] ([CategoryId]) 
GO
CREATE INDEX [IX_Offers_CityId] ON [dbo].[Offers] ([CityId]) 
