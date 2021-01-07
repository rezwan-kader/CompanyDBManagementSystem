create database [Company Database]
go

use [Company Database]
go


CREATE TABLE [dbo].[Category](
	[category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[CountryLog](
	[country] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CountryLog] PRIMARY KEY CLUSTERED 
(
	[country] ASC,
	[city] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[FoundedBy](
	[founder] [nvarchar](50) NOT NULL,
	[country] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[networth_busd] [smallint] NOT NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[Companies](
	[company_name] [nvarchar](50) NOT NULL,
	[category] [nvarchar](50) NOT NULL,
	[founder] [nvarchar](50) NOT NULL,
	[co_founder] [nvarchar](50) NULL,
	[founded] [smallint] NOT NULL,
	[country] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[networth_busd] [smallint] NOT NULL,
	[stock] [nvarchar](50) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[company_name] ASC,
	[category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Services](
	[service_type] [nvarchar](50) NOT NULL,
	[company_name] [nvarchar](50) NOT NULL,
	[services_type_2] [nvarchar](50) NOT NULL
) ON [PRIMARY]


