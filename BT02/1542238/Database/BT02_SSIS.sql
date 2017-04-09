USE [BT02_SSIS]
GO
/****** Object:  Table [dbo].[COW_INFO]    Script Date: 4/9/2017 5:35:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COW_INFO](
	[id] [int] NULL,
	[cowName] [nvarchar](50) NULL,
	[cowInfo] [nvarchar](500) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (10, N'A', N'Test1')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (11, N'B', N'Test2')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (12, N'C', N'Test3')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (13, N'D', N'Test4')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (14, N'E', N'Test5')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (10, N'A', N'Test1')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (11, N'B', N'Test2')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (12, N'C', N'Test3')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (13, N'D', N'Test4')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (14, N'E', N'Test5')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (1, N'A', N'Test')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (2, N'B', N'Test')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (3, N'C', N'Test')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (4, N'D', N'Test')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (5, N'E', N'Test')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (10, N'A', N'Test1')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (11, N'B', N'Test2')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (12, N'C', N'Test3')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (13, N'D', N'Test4')
INSERT [dbo].[COW_INFO] ([id], [cowName], [cowInfo]) VALUES (14, N'E', N'Test5')
