CREATE TABLE [new_sek_library].[users_file] (
    [id]       INT            IDENTITY (3, 1) NOT NULL,
    [file_src] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_users_file_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'new_sek_library.users_file', @level0type = N'SCHEMA', @level0name = N'new_sek_library', @level1type = N'TABLE', @level1name = N'users_file';


GO

