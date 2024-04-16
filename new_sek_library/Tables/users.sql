CREATE TABLE [new_sek_library].[users] (
    [id]             INT            IDENTITY (54, 1) NOT NULL,
    [userLevelId]    INT            DEFAULT ((4)) NULL,
    [name]           NVARCHAR (255) DEFAULT (N'') NULL,
    [name_aitiatiki] NVARCHAR (200) DEFAULT (NULL) NULL,
    [login]          NVARCHAR (50)  DEFAULT (N'') NULL,
    [password]       NVARCHAR (100) DEFAULT (N'') NULL,
    [email]          NVARCHAR (100) DEFAULT (N'') NULL,
    [phone]          NVARCHAR (50)  DEFAULT (N'') NULL,
    [address]        NVARCHAR (255) DEFAULT (N'') NULL,
    [locked]         SMALLINT       DEFAULT ((0)) NULL,
    [role]           NVARCHAR (45)  DEFAULT (NULL) NULL,
    CONSTRAINT [PK_users_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [users$users_ibfk_1] FOREIGN KEY ([userLevelId]) REFERENCES [new_sek_library].[user_levels] ([id]),
    CONSTRAINT [users$NewIndex] UNIQUE NONCLUSTERED ([login] ASC)
);


GO

CREATE NONCLUSTERED INDEX [users_ibfk_1_idx]
    ON [new_sek_library].[users]([userLevelId] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'new_sek_library.users', @level0type = N'SCHEMA', @level0name = N'new_sek_library', @level1type = N'TABLE', @level1name = N'users';


GO

