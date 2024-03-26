CREATE TABLE [dbo].[CandidateAccounts]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
	[SurName] NVARCHAR(100) NOT NULL,
	[PhoneNumber] NVARCHAR(50),
	[CreationDate] DATETIMEOFFSET NOT NULL,
	[Description] NVARCHAR(2000),
	[ContactEmail] NVARCHAR(200),
	[UserId] INT NOT NULL,
    CONSTRAINT [FK_CandidateAccount_Users]	FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users](Id) ON DELETE CASCADE,
	CONSTRAINT [PK_CandidateAccounts] PRIMARY KEY CLUSTERED ([Id] ASC)
)
GO 
CREATE INDEX [IX_CandidateAccounts_UserId] ON [dbo].[CandidateAccounts](UserId)