CREATE TABLE [dbo].[FormFillings]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[JobApplicationId] INT NOT NULL,
    [FillingDate] DATETIMEOFFSET NOT NULL,

	CONSTRAINT [PK_FormFillings] PRIMARY KEY CLUSTERED ([Id]) ,
	CONSTRAINT [FK_FormFillings_JobApplicationId] FOREIGN KEY ([JobApplicationId]) REFERENCES [dbo].[JobApplications]([Id])

 )
 GO
 CREATE INDEX [IX_FormFillings_JobApplicationId] ON [dbo].[FormFillings] ([JobApplicationId]) 