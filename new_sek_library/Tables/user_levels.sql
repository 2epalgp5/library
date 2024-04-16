CREATE TABLE [new_sek_library].[user_levels] (
    [id]    INT            IDENTITY (6, 1) NOT NULL,
    [title] NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_user_levels_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'new_sek_library.user_levels', @level0type = N'SCHEMA', @level0name = N'new_sek_library', @level1type = N'TABLE', @level1name = N'user_levels';


GO

