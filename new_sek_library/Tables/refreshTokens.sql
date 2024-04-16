CREATE TABLE [new_sek_library].[refreshTokens] (
    [id]              INT            IDENTITY (699, 1) NOT NULL,
    [token]           NVARCHAR (255) DEFAULT (NULL) NULL,
    [expires]         DATETIME2 (0)  DEFAULT (NULL) NULL,
    [created]         DATETIME2 (0)  NOT NULL,
    [createdByIp]     NVARCHAR (255) DEFAULT (NULL) NULL,
    [revoked]         DATETIME2 (0)  DEFAULT (NULL) NULL,
    [revokedByIp]     NVARCHAR (255) DEFAULT (NULL) NULL,
    [replacedByToken] NVARCHAR (255) DEFAULT (NULL) NULL,
    [accountId]       INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_refreshTokens_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [refreshTokens$refreshTokens_ibfk_1] FOREIGN KEY ([accountId]) REFERENCES [new_sek_library].[accounts] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO

CREATE NONCLUSTERED INDEX [accountId]
    ON [new_sek_library].[refreshTokens]([accountId] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'new_sek_library.refreshTokens', @level0type = N'SCHEMA', @level0name = N'new_sek_library', @level1type = N'TABLE', @level1name = N'refreshTokens';


GO

