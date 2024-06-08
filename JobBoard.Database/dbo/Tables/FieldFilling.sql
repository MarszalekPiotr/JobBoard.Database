CREATE TABLE [dbo].[FieldFillings]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[FormFillingId] INT NOT NULL,
	[Name] NVARCHAR(200) NOT NULL,
	[Value] NVARCHAR(1000) NOT NULL

	CONSTRAINT [PK_FieldFillings] PRIMARY KEY CLUSTERED ([Id]),
	CONSTRAINT [FK_FieldFillings_FormFillingId] FOREIGN KEY ([FormFillingId]) REFERENCES [dbo].[FormFillings]([Id])
	
	)
	GO
CREATE INDEX [IX_FieldFillings_FormFillingId] ON [dbo].[FieldFillings] ([FormFillingId]) 