CREATE TABLE [new_sek_library].[borrows] (
    [id]          INT           IDENTITY (249, 1) NOT NULL,
    [book_id]     INT           DEFAULT (NULL) NULL,
    [user_id]     INT           DEFAULT (NULL) NULL,
    [borrow_date] DATETIME2 (0) DEFAULT (NULL) NULL,
    [return_date] DATETIME2 (0) DEFAULT (NULL) NULL,
    [status]      INT           DEFAULT (NULL) NULL,
    CONSTRAINT [PK_borrows_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'new_sek_library.borrows', @level0type = N'SCHEMA', @level0name = N'new_sek_library', @level1type = N'TABLE', @level1name = N'borrows';


GO

