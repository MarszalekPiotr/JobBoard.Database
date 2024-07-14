CREATE TABLE [dbo].[JobApplications]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[CandidateAccountId] INT NOT NULL,
	[OfferId] INT NOT NULL,
	[ApplicationDate] DATETIMEOFFSET NOT NULL,
	[Status] NVARCHAR(100) NOT NULL,
	[CVFilePath] NVARCHAR(500) NULL,

	CONSTRAINT [PK_JobApplications] PRIMARY KEY CLUSTERED ([Id]),
	CONSTRAINT [FK_JobApplications_OfferId] FOREIGN KEY ([OfferId]) REFERENCES [dbo].[Offers]([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_JobApplications_CandidateAccountId] FOREIGN KEY ([CandidateAccountId]) REFERENCES [dbo].[CandidateAccounts] ([Id]) ON DELETE CASCADE

)
GO
CREATE INDEX [IX_JobApplications_CandidateAccountId] ON [dbo].[JobApplications] ([CandidateAccountId])
GO
CREATE INDEX [IX_JobApplications_OfferId] ON [dbo].[JobApplications] ([OfferId])

