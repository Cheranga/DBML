USE [TestDb]
GO

/****** Object: Table [dbo].[Address] Script Date: 5/06/2018 6:03:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Address] (
    [Id]           INT          IDENTITY (1, 1) NOT NULL,
    [StreetNumber] VARCHAR (50) NOT NULL,
    [Suburb]       VARCHAR (50) NOT NULL,
    [State]        VARCHAR (20) NOT NULL,
    [Country]      VARCHAR (50) NOT NULL
);



USE [TestDb]
GO

/****** Object: Table [dbo].[Customer] Script Date: 5/06/2018 6:03:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer] (
    [Id]        INT             IDENTITY (1, 1) NOT NULL,
    [FirstName] VARCHAR (50)    NOT NULL,
    [LastName]  VARCHAR (100)   NOT NULL,
    [Age]       INT             NULL,
    [Title]     VARCHAR (10)    NOT NULL,
    [AddressId] INT             NULL,
    [Salary]    DECIMAL (18, 2) NOT NULL,
    [Something] DECIMAL (18)    NULL
);



USE [TestDb]
GO

/****** Object: Table [dbo].[Order] Script Date: 5/06/2018 6:03:46 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Order] (
    [Id]        INT             IDENTITY (1, 1) NOT NULL,
    [ProductId] INT             NOT NULL,
    [Quantity]  INT             NOT NULL,
    [Price]     DECIMAL (18, 2) NOT NULL
);


USE [TestDb]
GO

/****** Object: Table [dbo].[Product] Script Date: 5/06/2018 6:03:50 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product] (
    [Id]     INT             IDENTITY (1, 1) NOT NULL,
    [Code]   VARCHAR (50)    NOT NULL,
    [Name]   VARCHAR (200)   NOT NULL,
    [Price]  DECIMAL (18, 2) NOT NULL,
    [OnSale] BIT             NULL
);


USE [TestDb]
GO

/****** Object: Table [dbo].[ShippingAddress] Script Date: 5/06/2018 6:03:54 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ShippingAddress] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [CustomerId] INT           NOT NULL,
    [OrderId]    INT           NOT NULL,
    [Address]    VARCHAR (250) NOT NULL
);


USE [TestDb]
GO

/****** Object: Table [dbo].[StockProduct] Script Date: 5/06/2018 6:03:57 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StockProduct] (
    [Id]   INT             IDENTITY (1, 1) NOT NULL,
    [Code] VARCHAR (20)    NOT NULL,
    [Name] VARCHAR (50)    NOT NULL,
    [Cost] DECIMAL (18, 2) NOT NULL
);


