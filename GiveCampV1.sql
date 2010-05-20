
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ExperienceLevels](
	[ExperienceLevelID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_ExperienceLevels] PRIMARY KEY CLUSTERED 
(
	[ExperienceLevelID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JobRoles](
	[JobRoleID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_JobRoles] PRIMARY KEY CLUSTERED 
(
	[JobRoleID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Technologies](
	[TechnologyID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Technologies] PRIMARY KEY CLUSTERED 
(
	[TechnologyID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Volunteers](
	[VolunteerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LastName] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TeamName] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmailAddress] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PhoneNumber] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Student] [bit] NOT NULL CONSTRAINT [DF__Volunteer__Stude__173876EA]  DEFAULT ((0)),
	[JobDescription] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HasLaptop] [bit] NOT NULL CONSTRAINT [DF__Volunteer__HasLa__182C9B23]  DEFAULT ((1)),
	[HasExtraLaptop] [bit] NOT NULL CONSTRAINT [DF__Volunteer__HasEx__1920BF5C]  DEFAULT ((0)),
	[GoodGuiDesigner] [bit] NOT NULL CONSTRAINT [DF__Volunteer__GoodG__1A14E395]  DEFAULT ((0)),
	[ExperienceLevelID] [int] NOT NULL,
	[YearsOfExperience] [tinyint] NULL,
	[DietaryNeeds] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TwitterHandle] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bio] [varchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Comments] [varchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Volunteers] PRIMARY KEY CLUSTERED 
(
	[VolunteerID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__Volunteers__164452B1] UNIQUE NONCLUSTERED 
(
	[EmailAddress] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[VolunteerTechnologies](
	[VolunteerID] [int] NOT NULL,
	[TechnologyID] [int] NOT NULL,
 CONSTRAINT [PK_VolunteerTechnologies_1] PRIMARY KEY NONCLUSTERED 
(
	[VolunteerID] ASC,
	[TechnologyID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[VolunteerJobRoles](
	[VolunteerID] [int] NOT NULL,
	[JobRoleID] [int] NOT NULL,
 CONSTRAINT [PK_VolunteerJobRoles_1] PRIMARY KEY NONCLUSTERED 
(
	[VolunteerID] ASC,
	[JobRoleID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[CharityRequirements](
	[CharityRequirementId] [int] IDENTITY(1,1) NOT NULL,
	[CharityName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[BackgroundInformation] [varchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[WorkRequested] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OtherInfrastructure] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OtherSupportSkills] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_CharityRequirements] PRIMARY KEY CLUSTERED 
(
	[CharityRequirementId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[CharityRequirementSupportSkills](
	[CharityRequirementId] [int] NOT NULL,
	[TechnologyId] [int] NOT NULL,
 CONSTRAINT [PK_CharityRequirementSupportSkills] PRIMARY KEY NONCLUSTERED 
(
	[CharityRequirementId] ASC,
	[TechnologyId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[CharityRequirementTechnologiesUsed](
	[CharityRequirementId] [int] NOT NULL,
	[TechnologyId] [int] NOT NULL,
 CONSTRAINT [PK_CharityRequirementTechnologiesUsed] PRIMARY KEY NONCLUSTERED 
(
	[CharityRequirementId] ASC,
	[TechnologyId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF

GO
ALTER TABLE [dbo].[Volunteers]  WITH CHECK ADD  CONSTRAINT [FK__Volunteer__Exper__1B0907CE] FOREIGN KEY([ExperienceLevelID])
REFERENCES [dbo].[ExperienceLevels] ([ExperienceLevelID])
GO
ALTER TABLE [dbo].[Volunteers] CHECK CONSTRAINT [FK__Volunteer__Exper__1B0907CE]
GO
ALTER TABLE [dbo].[VolunteerTechnologies]  WITH CHECK ADD  CONSTRAINT [FK__Volunteer__Techn__20C1E124] FOREIGN KEY([TechnologyID])
REFERENCES [dbo].[Technologies] ([TechnologyID])
GO
ALTER TABLE [dbo].[VolunteerTechnologies] CHECK CONSTRAINT [FK__Volunteer__Techn__20C1E124]
GO
ALTER TABLE [dbo].[VolunteerTechnologies]  WITH CHECK ADD  CONSTRAINT [FK__Volunteer__Volun__1FCDBCEB] FOREIGN KEY([VolunteerID])
REFERENCES [dbo].[Volunteers] ([VolunteerID])
GO
ALTER TABLE [dbo].[VolunteerTechnologies] CHECK CONSTRAINT [FK__Volunteer__Volun__1FCDBCEB]
GO
ALTER TABLE [dbo].[VolunteerJobRoles]  WITH CHECK ADD  CONSTRAINT [FK__Volunteer__Volun__1CF15040] FOREIGN KEY([VolunteerID])
REFERENCES [dbo].[Volunteers] ([VolunteerID])
GO
ALTER TABLE [dbo].[VolunteerJobRoles] CHECK CONSTRAINT [FK__Volunteer__Volun__1CF15040]
GO
ALTER TABLE [dbo].[VolunteerJobRoles]  WITH CHECK ADD  CONSTRAINT [FK_VolunteerJobRoles_JobRoles] FOREIGN KEY([JobRoleID])
REFERENCES [dbo].[JobRoles] ([JobRoleID])
GO
ALTER TABLE [dbo].[VolunteerJobRoles] CHECK CONSTRAINT [FK_VolunteerJobRoles_JobRoles]
GO
ALTER TABLE [dbo].[CharityRequirementSupportSkills]  WITH CHECK ADD FOREIGN KEY([CharityRequirementId])
REFERENCES [dbo].[CharityRequirements] ([CharityRequirementId])
GO
ALTER TABLE [dbo].[CharityRequirementSupportSkills]  WITH CHECK ADD FOREIGN KEY([TechnologyId])
REFERENCES [dbo].[Technologies] ([TechnologyID])
GO
ALTER TABLE [dbo].[CharityRequirementTechnologiesUsed]  WITH CHECK ADD FOREIGN KEY([CharityRequirementId])
REFERENCES [dbo].[CharityRequirements] ([CharityRequirementId])
GO
ALTER TABLE [dbo].[CharityRequirementTechnologiesUsed]  WITH CHECK ADD FOREIGN KEY([TechnologyId])
REFERENCES [dbo].[Technologies] ([TechnologyID])
GO
INSERT INTO JobRoles (Description, DisplayOrder) VALUES ('Designer', 1);
INSERT INTO JobRoles (Description, DisplayOrder) VALUES ('DBA', 2);
INSERT INTO JobRoles (Description, DisplayOrder) VALUES ('Developer', 3);
INSERT INTO JobRoles (Description, DisplayOrder) VALUES ('Business Analyst', 4);
INSERT INTO JobRoles (Description, DisplayOrder) VALUES ('Project Manager', 5);
INSERT INTO ExperienceLevels (Description, DisplayOrder) VALUES ('Beginner', 1);
INSERT INTO ExperienceLevels (Description, DisplayOrder) VALUES ('Intermediate', 2);
INSERT INTO ExperienceLevels (Description, DisplayOrder) VALUES ('Senior', 3);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('ASP', 1);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('ASP.NET', 2);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('C#', 3);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('Visual Basic', 4);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('HTML', 5);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('JavaScript', 6);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('CSS', 7);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('DotNetNuke', 8);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('Photoshop', 9);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('ColdFusion', 10);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('Flex', 11);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('Flash', 12);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('Silverlight', 13);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('PHP', 14);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('Ruby', 15);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('Java', 16);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('Joomla', 17);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('Sitefinity', 18);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('Drupal', 19);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('PHP-Nuke', 20);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('Umbraco', 21);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('WordPress', 22);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('MovableType', 23);
INSERT INTO Technologies (Description, DisplayOrder) VALUES ('Community Server', 24);
GO