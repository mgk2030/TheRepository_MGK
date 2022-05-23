CREATE TABLE [dbo].[utbl] (
    [Id]   INT        NOT NULL,
    [Name] NCHAR(25) NULL,
    [Age]  INT        NULL,
    [Mobile] NCHAR(10) NULL, 
    [VehicleDetails] NCHAR(50) NULL, 
    [PlateNumber] NCHAR(10) NULL, 
    [Model] NCHAR(10) NULL, 
    [Make] NCHAR(5) NULL, 
    [ComplaintDetails] NCHAR(100) NULL, 
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

