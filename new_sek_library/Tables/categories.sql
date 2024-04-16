CREATE TABLE [new_sek_library].[categories] (
    [id]        INT            IDENTITY (12, 1) NOT NULL,
    [name]      NVARCHAR (255) NOT NULL,
    [status]    INT            DEFAULT (NULL) NULL,
    [createdAt] DATETIME2 (0)  DEFAULT (getdate()) NOT NULL,
    [updatedAt] DATETIME2 (0)  DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_categories_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'new_sek_library.categories', @level0type = N'SCHEMA', @level0name = N'new_sek_library', @level1type = N'TABLE', @level1name = N'categories';


GO

