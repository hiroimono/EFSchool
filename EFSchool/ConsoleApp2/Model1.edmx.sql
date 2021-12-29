
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/28/2021 23:52:59
-- Generated from EDMX file: C:\Users\heltutan\Desktop\MyRepos\_ReposForTrainings\Learn_ASP.NET\Learn_EntityFramewok_EFSchool\EFSchool\EFSchool\ConsoleApp2\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EFSchool];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AlbumArtistId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Album] DROP CONSTRAINT [FK_AlbumArtistId];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerSupportRepId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_CustomerSupportRepId];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeReportsTo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_EmployeeReportsTo];
GO
IF OBJECT_ID(N'[dbo].[FK_InvoiceCustomerId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Invoice] DROP CONSTRAINT [FK_InvoiceCustomerId];
GO
IF OBJECT_ID(N'[dbo].[FK_InvoiceLineInvoiceId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InvoiceLine] DROP CONSTRAINT [FK_InvoiceLineInvoiceId];
GO
IF OBJECT_ID(N'[dbo].[FK_InvoiceLineTrackId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InvoiceLine] DROP CONSTRAINT [FK_InvoiceLineTrackId];
GO
IF OBJECT_ID(N'[dbo].[FK_PlaylistTrackPlaylistId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlaylistTrack] DROP CONSTRAINT [FK_PlaylistTrackPlaylistId];
GO
IF OBJECT_ID(N'[dbo].[FK_PlaylistTrackTrackId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlaylistTrack] DROP CONSTRAINT [FK_PlaylistTrackTrackId];
GO
IF OBJECT_ID(N'[dbo].[FK_TrackAlbumId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Track] DROP CONSTRAINT [FK_TrackAlbumId];
GO
IF OBJECT_ID(N'[dbo].[FK_TrackGenreId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Track] DROP CONSTRAINT [FK_TrackGenreId];
GO
IF OBJECT_ID(N'[dbo].[FK_TrackMediaTypeId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Track] DROP CONSTRAINT [FK_TrackMediaTypeId];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Album]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Album];
GO
IF OBJECT_ID(N'[dbo].[Artist]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Artist];
GO
IF OBJECT_ID(N'[dbo].[Customer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customer];
GO
IF OBJECT_ID(N'[dbo].[Employee]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee];
GO
IF OBJECT_ID(N'[dbo].[Genre]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Genre];
GO
IF OBJECT_ID(N'[dbo].[Invoice]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Invoice];
GO
IF OBJECT_ID(N'[dbo].[InvoiceLine]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InvoiceLine];
GO
IF OBJECT_ID(N'[dbo].[MediaType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MediaType];
GO
IF OBJECT_ID(N'[dbo].[Playlist]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Playlist];
GO
IF OBJECT_ID(N'[dbo].[PlaylistTrack]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlaylistTrack];
GO
IF OBJECT_ID(N'[dbo].[Product]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Product];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Track]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Track];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Albums'
CREATE TABLE [dbo].[Albums] (
    [AlbumId] int  NOT NULL,
    [Title] varchar(160)  NOT NULL,
    [ArtistId] int  NOT NULL
);
GO

-- Creating table 'Artists'
CREATE TABLE [dbo].[Artists] (
    [ArtistId] int  NOT NULL,
    [Name] varchar(120)  NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [CustomerId] int  NOT NULL,
    [FirstName] varchar(40)  NOT NULL,
    [LastName] varchar(20)  NOT NULL,
    [Company] varchar(80)  NULL,
    [Address] varchar(70)  NULL,
    [City] varchar(40)  NULL,
    [State] varchar(40)  NULL,
    [Country] varchar(40)  NULL,
    [PostalCode] varchar(10)  NULL,
    [Phone] varchar(24)  NULL,
    [Fax] varchar(24)  NULL,
    [Email] varchar(60)  NOT NULL,
    [SupportRepId] int  NULL
);
GO

-- Creating table 'Genres'
CREATE TABLE [dbo].[Genres] (
    [GenreId] int  NOT NULL,
    [Name] varchar(120)  NULL
);
GO

-- Creating table 'Invoices'
CREATE TABLE [dbo].[Invoices] (
    [InvoiceId] int  NOT NULL,
    [CustomerId] int  NOT NULL,
    [InvoiceDate] binary(8)  NOT NULL,
    [BillingAddress] varchar(70)  NULL,
    [BillingCity] varchar(40)  NULL,
    [BillingState] varchar(40)  NULL,
    [BillingCountry] varchar(40)  NULL,
    [BillingPostalCode] varchar(10)  NULL,
    [Total] decimal(10,2)  NOT NULL
);
GO

-- Creating table 'InvoiceLines'
CREATE TABLE [dbo].[InvoiceLines] (
    [InvoiceLineId] int  NOT NULL,
    [InvoiceId] int  NOT NULL,
    [TrackId] int  NOT NULL,
    [UnitPrice] decimal(10,2)  NOT NULL,
    [Quantity] int  NOT NULL
);
GO

-- Creating table 'MediaTypes'
CREATE TABLE [dbo].[MediaTypes] (
    [MediaTypeId] int  NOT NULL,
    [Name] varchar(120)  NULL
);
GO

-- Creating table 'Playlists'
CREATE TABLE [dbo].[Playlists] (
    [PlaylistId] int  NOT NULL,
    [Name] varchar(120)  NULL
);
GO

-- Creating table 'Tracks'
CREATE TABLE [dbo].[Tracks] (
    [TrackId] int  NOT NULL,
    [Name] varchar(200)  NOT NULL,
    [AlbumId] int  NULL,
    [MediaTypeId] int  NOT NULL,
    [GenreId] int  NULL,
    [Composer] varchar(220)  NULL,
    [Milliseconds] int  NOT NULL,
    [Bytes] int  NULL,
    [UnitPrice] decimal(10,2)  NOT NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [EmployeeId] int  NOT NULL,
    [LastName] varchar(20)  NOT NULL,
    [FirstName] varchar(20)  NOT NULL,
    [Title] varchar(30)  NULL,
    [ReportsTo] int  NULL,
    [BirthDate] datetime  NULL,
    [HireDate] datetime  NULL,
    [Address] varchar(70)  NULL,
    [City] varchar(40)  NULL,
    [State] varchar(40)  NULL,
    [Country] varchar(40)  NULL,
    [PostalCode] varchar(10)  NULL,
    [Phone] varchar(24)  NULL,
    [Fax] varchar(24)  NULL,
    [Email] varchar(60)  NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NULL,
    [Price] int  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'PlaylistTrack'
CREATE TABLE [dbo].[PlaylistTrack] (
    [Playlists_PlaylistId] int  NOT NULL,
    [Tracks_TrackId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [AlbumId] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [PK_Albums]
    PRIMARY KEY CLUSTERED ([AlbumId] ASC);
GO

-- Creating primary key on [ArtistId] in table 'Artists'
ALTER TABLE [dbo].[Artists]
ADD CONSTRAINT [PK_Artists]
    PRIMARY KEY CLUSTERED ([ArtistId] ASC);
GO

-- Creating primary key on [CustomerId] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([CustomerId] ASC);
GO

-- Creating primary key on [GenreId] in table 'Genres'
ALTER TABLE [dbo].[Genres]
ADD CONSTRAINT [PK_Genres]
    PRIMARY KEY CLUSTERED ([GenreId] ASC);
GO

-- Creating primary key on [InvoiceId] in table 'Invoices'
ALTER TABLE [dbo].[Invoices]
ADD CONSTRAINT [PK_Invoices]
    PRIMARY KEY CLUSTERED ([InvoiceId] ASC);
GO

-- Creating primary key on [InvoiceLineId] in table 'InvoiceLines'
ALTER TABLE [dbo].[InvoiceLines]
ADD CONSTRAINT [PK_InvoiceLines]
    PRIMARY KEY CLUSTERED ([InvoiceLineId] ASC);
GO

-- Creating primary key on [MediaTypeId] in table 'MediaTypes'
ALTER TABLE [dbo].[MediaTypes]
ADD CONSTRAINT [PK_MediaTypes]
    PRIMARY KEY CLUSTERED ([MediaTypeId] ASC);
GO

-- Creating primary key on [PlaylistId] in table 'Playlists'
ALTER TABLE [dbo].[Playlists]
ADD CONSTRAINT [PK_Playlists]
    PRIMARY KEY CLUSTERED ([PlaylistId] ASC);
GO

-- Creating primary key on [TrackId] in table 'Tracks'
ALTER TABLE [dbo].[Tracks]
ADD CONSTRAINT [PK_Tracks]
    PRIMARY KEY CLUSTERED ([TrackId] ASC);
GO

-- Creating primary key on [EmployeeId] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([EmployeeId] ASC);
GO

-- Creating primary key on [Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [Playlists_PlaylistId], [Tracks_TrackId] in table 'PlaylistTrack'
ALTER TABLE [dbo].[PlaylistTrack]
ADD CONSTRAINT [PK_PlaylistTrack]
    PRIMARY KEY CLUSTERED ([Playlists_PlaylistId], [Tracks_TrackId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ArtistId] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [FK_AlbumArtistId]
    FOREIGN KEY ([ArtistId])
    REFERENCES [dbo].[Artists]
        ([ArtistId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AlbumArtistId'
CREATE INDEX [IX_FK_AlbumArtistId]
ON [dbo].[Albums]
    ([ArtistId]);
GO

-- Creating foreign key on [AlbumId] in table 'Tracks'
ALTER TABLE [dbo].[Tracks]
ADD CONSTRAINT [FK_TrackAlbumId]
    FOREIGN KEY ([AlbumId])
    REFERENCES [dbo].[Albums]
        ([AlbumId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrackAlbumId'
CREATE INDEX [IX_FK_TrackAlbumId]
ON [dbo].[Tracks]
    ([AlbumId]);
GO

-- Creating foreign key on [CustomerId] in table 'Invoices'
ALTER TABLE [dbo].[Invoices]
ADD CONSTRAINT [FK_InvoiceCustomerId]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[Customers]
        ([CustomerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InvoiceCustomerId'
CREATE INDEX [IX_FK_InvoiceCustomerId]
ON [dbo].[Invoices]
    ([CustomerId]);
GO

-- Creating foreign key on [GenreId] in table 'Tracks'
ALTER TABLE [dbo].[Tracks]
ADD CONSTRAINT [FK_TrackGenreId]
    FOREIGN KEY ([GenreId])
    REFERENCES [dbo].[Genres]
        ([GenreId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrackGenreId'
CREATE INDEX [IX_FK_TrackGenreId]
ON [dbo].[Tracks]
    ([GenreId]);
GO

-- Creating foreign key on [InvoiceId] in table 'InvoiceLines'
ALTER TABLE [dbo].[InvoiceLines]
ADD CONSTRAINT [FK_InvoiceLineInvoiceId]
    FOREIGN KEY ([InvoiceId])
    REFERENCES [dbo].[Invoices]
        ([InvoiceId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InvoiceLineInvoiceId'
CREATE INDEX [IX_FK_InvoiceLineInvoiceId]
ON [dbo].[InvoiceLines]
    ([InvoiceId]);
GO

-- Creating foreign key on [TrackId] in table 'InvoiceLines'
ALTER TABLE [dbo].[InvoiceLines]
ADD CONSTRAINT [FK_InvoiceLineTrackId]
    FOREIGN KEY ([TrackId])
    REFERENCES [dbo].[Tracks]
        ([TrackId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InvoiceLineTrackId'
CREATE INDEX [IX_FK_InvoiceLineTrackId]
ON [dbo].[InvoiceLines]
    ([TrackId]);
GO

-- Creating foreign key on [MediaTypeId] in table 'Tracks'
ALTER TABLE [dbo].[Tracks]
ADD CONSTRAINT [FK_TrackMediaTypeId]
    FOREIGN KEY ([MediaTypeId])
    REFERENCES [dbo].[MediaTypes]
        ([MediaTypeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrackMediaTypeId'
CREATE INDEX [IX_FK_TrackMediaTypeId]
ON [dbo].[Tracks]
    ([MediaTypeId]);
GO

-- Creating foreign key on [Playlists_PlaylistId] in table 'PlaylistTrack'
ALTER TABLE [dbo].[PlaylistTrack]
ADD CONSTRAINT [FK_PlaylistTrack_Playlist]
    FOREIGN KEY ([Playlists_PlaylistId])
    REFERENCES [dbo].[Playlists]
        ([PlaylistId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Tracks_TrackId] in table 'PlaylistTrack'
ALTER TABLE [dbo].[PlaylistTrack]
ADD CONSTRAINT [FK_PlaylistTrack_Track]
    FOREIGN KEY ([Tracks_TrackId])
    REFERENCES [dbo].[Tracks]
        ([TrackId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PlaylistTrack_Track'
CREATE INDEX [IX_FK_PlaylistTrack_Track]
ON [dbo].[PlaylistTrack]
    ([Tracks_TrackId]);
GO

-- Creating foreign key on [SupportRepId] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_CustomerSupportRepId]
    FOREIGN KEY ([SupportRepId])
    REFERENCES [dbo].[Employees]
        ([EmployeeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerSupportRepId'
CREATE INDEX [IX_FK_CustomerSupportRepId]
ON [dbo].[Customers]
    ([SupportRepId]);
GO

-- Creating foreign key on [ReportsTo] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_EmployeeReportsTo]
    FOREIGN KEY ([ReportsTo])
    REFERENCES [dbo].[Employees]
        ([EmployeeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeReportsTo'
CREATE INDEX [IX_FK_EmployeeReportsTo]
ON [dbo].[Employees]
    ([ReportsTo]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------