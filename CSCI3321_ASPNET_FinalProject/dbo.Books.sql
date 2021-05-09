CREATE TABLE [dbo].[Books] (
    [BookID]      INT           IDENTITY (1, 1) NOT NULL,
    [Title]       VARCHAR (500) NOT NULL,
    [AuthorID]    INT           NOT NULL,
    [Price]       DECIMAL (18,2)  NOT NULL,
    [PublishDate] DATE          NOT NULL,
    [PublisherID] INT           NOT NULL,
    [GenreID]     INT           NOT NULL,
    [WordCount]   INT           NULL,
    PRIMARY KEY CLUSTERED ([BookID] ASC),
    CONSTRAINT [FK_Books_Authors] FOREIGN KEY ([AuthorID]) REFERENCES [dbo].[Authors] ([AuthorID]),
    CONSTRAINT [FK_Books_Publishers] FOREIGN KEY ([PublisherID]) REFERENCES [dbo].[Publishers] ([PublisherID]),
    CONSTRAINT [FK_Books_Genres] FOREIGN KEY ([GenreID]) REFERENCES [dbo].[Genres] ([GenreID]),
    CONSTRAINT [CK_Books_PublishDate] CHECK ([PublishDate]<getdate())
);

