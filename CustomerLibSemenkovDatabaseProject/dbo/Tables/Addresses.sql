CREATE TABLE [dbo].[Addresses] (
    [AddressesId]    INT            IDENTITY (1, 1) NOT NULL,
    [CustomerId]     INT            NOT NULL,
    [Address Line]   NVARCHAR (100) NOT NULL,
    [Address Line2 ] NVARCHAR (100) NULL,
    [Address Type]   NVARCHAR (8)   NOT NULL,
    [City]           NVARCHAR (100) NOT NULL,
    [Postal Code]    NVARCHAR (6)   NOT NULL,
    [State]          NVARCHAR (15)  NOT NULL,
    [Country]        NVARCHAR (14)  NULL,
    CONSTRAINT [Addresses_Id] PRIMARY KEY CLUSTERED ([AddressesId] ASC),
    CONSTRAINT [address_type_cc] CHECK ([Address Type]='Billing' OR [Address Type]='Shipping'),
    CONSTRAINT [country_cc] CHECK ([Country]='Canada' OR [Country]='United States'),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId])
);

