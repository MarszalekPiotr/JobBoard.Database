CREATE TABLE [dbo].[CompanyAccountUsers]
(
	[Id]  INT IDENTITY(1,1) NOT NULL,
	[CompanyAccountId] INT NOT NULL,
	[UserId] INT NOT NULL,
	CONSTRAINT [PK_CompanyAccountUsers] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_CompanyAccountUsers_CompanyAccounts] FOREIGN KEY ([CompanyAccountId]) REFERENCES [dbo].[CompanyAccounts] ([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_CompanyAccountUsers_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE
	
)

GO 
CREATE INDEX [IX_CompanyAccountUsers_CompanyAccountId] ON [dbo].[CompanyAccountUsers]([CompanyAccountId])
GO
CREATE INDEX [IX_CompanyAccountUsers_UserId] ON [dbo].[CompanyAccountUsers]([UserId])