CREATE TABLE [dbo].[Customers] (
    [CustomerId]             INT            IDENTITY (1, 1) NOT NULL,
    [Last Name]              NVARCHAR (50)  NOT NULL,
    [First Name]             NVARCHAR (50)  NULL,
    [Phone Number]           NVARCHAR (15)  NULL,
    [Email]                  NVARCHAR (40)  NULL,
    [Notes]                  NVARCHAR (MAX) NOT NULL,
    [Total Purchases Amount] MONEY          NULL,
    CONSTRAINT [Customer_Id] PRIMARY KEY CLUSTERED ([CustomerId] ASC),
    CONSTRAINT [email_cc] CHECK ([Email] like '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%'),
    CONSTRAINT [phone_number_cc] CHECK ([Phone Number] like '+[1-9]'+replicate('[0-9]',(13)))
);

