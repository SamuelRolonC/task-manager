DROP TABLE IF EXISTS [dbo].[Workspace]
GO

CREATE TABLE [Workspace] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [Title] nvarchar(255),
  [Description] nvarchar(255)
)
GO

DROP TABLE IF EXISTS [dbo].[Project]
GO

CREATE TABLE [Project] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [Title] nvarchar(255),
  [Description] nvarchar(255)
)
GO

DROP TABLE IF EXISTS [dbo].[Objective]
GO

CREATE TABLE [Objective] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [Title] nvarchar(255),
  [Description] nvarchar(255),
  [DefinitionDate] datetime,
  [IsMain] bit,
  [ObjectiveId] int
)
GO

DROP TABLE IF EXISTS [dbo].[Task]
GO

CREATE TABLE [Task] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [Title] nvarchar(255),
  [Description] nvarchar(255),
  [Start] datetime,
  [End] datetime,
  [IsPlanning] bit,
  [IsPerform] bit,
  [ObjectiveId] int
)
GO

DROP TABLE IF EXISTS [dbo].[Tag]
GO

CREATE TABLE [Tag] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [Description] nvarchar(255)
)
GO

DROP TABLE IF EXISTS [dbo].[Project_Workspace]
GO

CREATE TABLE [Project_Workspace] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [ProjectId] int,
  [WorkspaceId] int
)
GO

DROP TABLE IF EXISTS [dbo].[Objective_Project]
GO

CREATE TABLE [Objective_Project] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [ObjectiveId] int,
  [ProjectId] int
)
GO

DROP TABLE IF EXISTS [dbo].[Association_Tag]
GO

CREATE TABLE [Association_Tag] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [TagId] int,
  [AssociationId] int,
  [AssociationName] nvarchar(255)
)
GO

ALTER TABLE [Objective] ADD 
	CONSTRAINT [Objective_FK_ObjectiveId] 
	FOREIGN KEY ([ObjectiveId]) REFERENCES [Objective] ([Id])
GO

ALTER TABLE [Task] ADD 
	CONSTRAINT [Task_FK_ObjectiveId] 
	FOREIGN KEY ([ObjectiveId]) REFERENCES [Objective] ([Id])
GO

ALTER TABLE [Project_Workspace] ADD 
	CONSTRAINT [Project_Workspace_FK_ProjectId] 
	FOREIGN KEY ([ProjectId]) REFERENCES [Project] ([Id])
GO

ALTER TABLE [Project_Workspace] ADD 
	CONSTRAINT [Project_Workspace_FK_WorkspaceId]
	FOREIGN KEY ([WorkspaceId]) REFERENCES [Workspace] ([Id])
GO

ALTER TABLE [Objective_Project] ADD 
	CONSTRAINT [Objective_Project_FK_ObjectiveId]
	FOREIGN KEY ([ObjectiveId]) REFERENCES [Objective] ([Id])
GO

ALTER TABLE [Objective_Project] ADD 
	CONSTRAINT [Objective_Project_FK_ProjectId] 
	FOREIGN KEY ([ProjectId]) REFERENCES [Project] ([Id])
GO

ALTER TABLE [Association_Tag] ADD 
	CONSTRAINT [Association_Tag_FK_TagId]
	FOREIGN KEY ([TagId]) REFERENCES [Tag] ([Id])
GO
