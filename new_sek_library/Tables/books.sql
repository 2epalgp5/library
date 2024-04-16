CREATE TABLE [new_sek_library].[books] (
    [id]            INT             IDENTITY (4126, 1) NOT NULL,
    [abekt]         NVARCHAR (255)  DEFAULT (NULL) NULL,
    [position]      NVARCHAR (255)  NOT NULL,
    [box]           NVARCHAR (255)  DEFAULT (NULL) NULL,
    [title]         NVARCHAR (255)  NOT NULL,
    [isbn]          NVARCHAR (255)  DEFAULT (NULL) NULL,
    [frontpage]     VARBINARY (MAX) NULL,
    [actualCopies]  INT             DEFAULT (NULL) NULL,
    [currentCopies] INT             NOT NULL,
    [publisher]     NVARCHAR (255)  DEFAULT (NULL) NULL,
    [author]        NVARCHAR (255)  DEFAULT (NULL) NULL,
    [createdAt]     DATETIME2 (0)   NOT NULL,
    [updatedAt]     DATETIME2 (0)   NOT NULL,
    [categoryId]    INT             DEFAULT (NULL) NULL,
    CONSTRAINT [PK_books_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [books$books_ibfk_1] FOREIGN KEY ([categoryId]) REFERENCES [new_sek_library].[categories] ([id]) ON DELETE SET NULL ON UPDATE CASCADE
);


GO

CREATE NONCLUSTERED INDEX [categoryId]
    ON [new_sek_library].[books]([categoryId] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'new_sek_library.books', @level0type = N'SCHEMA', @level0name = N'new_sek_library', @level1type = N'TABLE', @level1name = N'books';


GO

