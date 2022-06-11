CREATE TABLE [dbo].[utbl] (
    [Id]                INT          NOT NULL,
    [ProductName]       NCHAR (50)   NULL,
    [QuantityAvailable] INT          NULL,
    [Contact]           NCHAR (10)   NULL,
    [ProductDetails]    NCHAR (1000) NULL,
    [ProductID]         NCHAR (10)   NULL,
    [Model]             NCHAR (50)   NULL,
    [Make]              NCHAR (5)    NULL,
    [Description]       NCHAR (1000) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

