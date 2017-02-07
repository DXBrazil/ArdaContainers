/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/6/2017 11:32:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[Modules]    Script Date: 2/6/2017 11:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[ModuleID] [int] IDENTITY(1,1) NOT NULL,
	[Endpoint] [nvarchar](max) NOT NULL,
	[ModuleName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[ModuleID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Resources]    Script Date: 2/6/2017 11:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resources](
	[ResourceID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[CategorySequence] [int] NOT NULL,
	[DisplayName] [nvarchar](max) NOT NULL,
	[ModuleID] [int] NOT NULL,
	[ResourceName] [nvarchar](max) NOT NULL,
	[ResourceSequence] [int] NOT NULL,
 CONSTRAINT [PK_Resource] PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/6/2017 11:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UniqueName] [nvarchar](450) NOT NULL,
	[GivenName] [nvarchar](max) NULL,
	[JobTitle] [nvarchar](max) NULL,
	[ManagerUniqueName] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PhotoBase64] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Surname] [nvarchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UniqueName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[UsersPermissions]    Script Date: 2/6/2017 11:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersPermissions](
	[PermissionID] [int] IDENTITY(1,1) NOT NULL,
	[ResourceID] [int] NOT NULL,
	[UniqueName] [nvarchar](450) NULL,
 CONSTRAINT [PK_UsersPermission] PRIMARY KEY CLUSTERED 
(
	[PermissionID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
SET IDENTITY_INSERT [dbo].[Modules] ON 

GO
INSERT [dbo].[Modules] ([ModuleID], [Endpoint], [ModuleName]) VALUES (1, N'https://ardaapp.azurewebsites.net', N'Dashboard')
GO
INSERT [dbo].[Modules] ([ModuleID], [Endpoint], [ModuleName]) VALUES (2, N'https://ardaapp.azurewebsites.net', N'Users')
GO
INSERT [dbo].[Modules] ([ModuleID], [Endpoint], [ModuleName]) VALUES (3, N'https://ardaapp.azurewebsites.net', N'FiscalYear')
GO
INSERT [dbo].[Modules] ([ModuleID], [Endpoint], [ModuleName]) VALUES (4, N'https://ardaapp.azurewebsites.net', N'Metric')
GO
INSERT [dbo].[Modules] ([ModuleID], [Endpoint], [ModuleName]) VALUES (5, N'https://ardaapp.azurewebsites.net', N'Appointment')
GO
INSERT [dbo].[Modules] ([ModuleID], [Endpoint], [ModuleName]) VALUES (6, N'https://ardaapp.azurewebsites.net', N'Report')
GO
SET IDENTITY_INSERT [dbo].[Modules] OFF
GO
SET IDENTITY_INSERT [dbo].[Resources] ON 

GO
INSERT [dbo].[Resources] ([ResourceID], [Category], [CategorySequence], [DisplayName], [ModuleID], [ResourceName], [ResourceSequence]) VALUES (1, N'Board', 1, N'Board', 1, N'Index', 1)
INSERT [dbo].[Resources] ([ResourceID], [Category], [CategorySequence], [DisplayName], [ModuleID], [ResourceName], [ResourceSequence]) VALUES (2, N'Users', 2, N'All', 2, N'Index', 1)
INSERT [dbo].[Resources] ([ResourceID], [Category], [CategorySequence], [DisplayName], [ModuleID], [ResourceName], [ResourceSequence]) VALUES (3, N'Users', 2, N'Review', 2, N'Review', 2)
INSERT [dbo].[Resources] ([ResourceID], [Category], [CategorySequence], [DisplayName], [ModuleID], [ResourceName], [ResourceSequence]) VALUES (4, N'Fiscal Years', 3, N'All', 3, N'Index', 1)
INSERT [dbo].[Resources] ([ResourceID], [Category], [CategorySequence], [DisplayName], [ModuleID], [ResourceName], [ResourceSequence]) VALUES (5, N'Fiscal Years', 3, N'Add', 3, N'Add', 2)
INSERT [dbo].[Resources] ([ResourceID], [Category], [CategorySequence], [DisplayName], [ModuleID], [ResourceName], [ResourceSequence]) VALUES (6, N'Metrics', 4, N'All', 4, N'Index', 1)
INSERT [dbo].[Resources] ([ResourceID], [Category], [CategorySequence], [DisplayName], [ModuleID], [ResourceName], [ResourceSequence]) VALUES (7, N'Metrics', 4, N'Add', 4, N'Add', 2)
INSERT [dbo].[Resources] ([ResourceID], [Category], [CategorySequence], [DisplayName], [ModuleID], [ResourceName], [ResourceSequence]) VALUES (8, N'Appointments', 5, N'My', 5, N'My', 1)
INSERT [dbo].[Resources] ([ResourceID], [Category], [CategorySequence], [DisplayName], [ModuleID], [ResourceName], [ResourceSequence]) VALUES (9, N'Appointments', 5, N'New', 5, N'Add', 3)
INSERT [dbo].[Resources] ([ResourceID], [Category], [CategorySequence], [DisplayName], [ModuleID], [ResourceName], [ResourceSequence]) VALUES (11, N'Reports', 6, N'Time consuming', 6, N'TimeConsuming', 1)
INSERT [dbo].[Resources] ([ResourceID], [Category], [CategorySequence], [DisplayName], [ModuleID], [ResourceName], [ResourceSequence]) VALUES (12, N'Appointments', 5, N'All', 5, N'All', 2)
GO
SET IDENTITY_INSERT [dbo].[Resources] OFF
GO
INSERT [dbo].[Users] ([UniqueName], [GivenName], [JobTitle], [ManagerUniqueName], [Name], [PhotoBase64], [Status], [Surname]) VALUES (N'user@ardademo.onmicrosoft.com', N'User', N'TECH EVANGELIST', NULL, N'User', NULL, 2, N'1')
GO
SET IDENTITY_INSERT [dbo].[UsersPermissions] ON 
GO
INSERT [dbo].[UsersPermissions] ([PermissionID], [ResourceID], [UniqueName]) VALUES (84, 1, N'user@ardademo.onmicrosoft.com')
INSERT [dbo].[UsersPermissions] ([PermissionID], [ResourceID], [UniqueName]) VALUES (85, 2, N'user@ardademo.onmicrosoft.com')
INSERT [dbo].[UsersPermissions] ([PermissionID], [ResourceID], [UniqueName]) VALUES (86, 3, N'user@ardademo.onmicrosoft.com')
INSERT [dbo].[UsersPermissions] ([PermissionID], [ResourceID], [UniqueName]) VALUES (87, 4, N'user@ardademo.onmicrosoft.com')
INSERT [dbo].[UsersPermissions] ([PermissionID], [ResourceID], [UniqueName]) VALUES (88, 5, N'user@ardademo.onmicrosoft.com')
INSERT [dbo].[UsersPermissions] ([PermissionID], [ResourceID], [UniqueName]) VALUES (89, 6, N'user@ardademo.onmicrosoft.com')
INSERT [dbo].[UsersPermissions] ([PermissionID], [ResourceID], [UniqueName]) VALUES (90, 7, N'user@ardademo.onmicrosoft.com')
INSERT [dbo].[UsersPermissions] ([PermissionID], [ResourceID], [UniqueName]) VALUES (91, 8, N'user@ardademo.onmicrosoft.com')
INSERT [dbo].[UsersPermissions] ([PermissionID], [ResourceID], [UniqueName]) VALUES (92, 9, N'user@ardademo.onmicrosoft.com')
INSERT [dbo].[UsersPermissions] ([PermissionID], [ResourceID], [UniqueName]) VALUES (93, 11, N'user@ardademo.onmicrosoft.com')
INSERT [dbo].[UsersPermissions] ([PermissionID], [ResourceID], [UniqueName]) VALUES (218, 12, N'user@ardademo.onmicrosoft.com')
GO
SET IDENTITY_INSERT [dbo].[UsersPermissions] OFF
GO
ALTER TABLE [dbo].[Resources]  WITH CHECK ADD  CONSTRAINT [FK_Resource_Module_ModuleID] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[Modules] ([ModuleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Resources] CHECK CONSTRAINT [FK_Resource_Module_ModuleID]
GO
ALTER TABLE [dbo].[UsersPermissions]  WITH CHECK ADD  CONSTRAINT [FK_UsersPermission_Resource_ResourceID] FOREIGN KEY([ResourceID])
REFERENCES [dbo].[Resources] ([ResourceID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersPermissions] CHECK CONSTRAINT [FK_UsersPermission_Resource_ResourceID]
GO
ALTER TABLE [dbo].[UsersPermissions]  WITH CHECK ADD  CONSTRAINT [FK_UsersPermission_User_UniqueName] FOREIGN KEY([UniqueName])
REFERENCES [dbo].[Users] ([UniqueName])
GO
ALTER TABLE [dbo].[UsersPermissions] CHECK CONSTRAINT [FK_UsersPermission_User_UniqueName]
GO
