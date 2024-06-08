CREATE TABLE [dbo].[OfferTags]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[OfferId] INT NOT NULL,
	[TagId] INT NOT NULL,

	CONSTRAINT [PK_OfferTags] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT  [FK_OfferTags_OfferId] FOREIGN KEY  ([OfferId]) REFERENCES [dbo].[Offers]([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_OfferTags_TagId] FOREIGN KEY ([TagId]) REFERENCES [dbo].[Tags] ([Id])  ON DELETE CASCADE
 
)

GO
CREATE INDEX [IX_OfferTags_OfferId] ON [dbo].[OfferTags] ([OfferId])
GO
CREATE INDEX [IX_OfferTags_TagId] ON [dbo].[OfferTags] ([TagId]) 
