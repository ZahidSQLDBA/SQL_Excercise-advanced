drop database if exists TrackIt;
create database TrackIt;
-- Make sure we're in the correct database before we add schema.
USE TrackIt;

create table Project(
	ProjectId CHAR(50) Primary Key,
    `Name` varchar(100) NOT NULL,
    Summary varchar(2000) null,
    DueDate Date Not Null,
    IsActive bool not null default 1
);

create table Worker(
	WorkerId INT PRIMARY KEY auto_increment,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) Not Null
);

create table ProjectWorker(
	ProjectId char(50) NOT NULL,
    WorkerId INT NOT NULL,
    primary key pk_ProjectWorker (ProjectId, WorkerId),
    foreign key fk_ProjectWorker_Project (ProjectId)
		references Project(ProjectId),
	foreign key fk_ProjectWorker_Worker (WorkerId)
		references Worker(WorkerId)
);

Create Table Task(
	TaskId INT primary key auto_increment,
    Title varchar(100) not null,
    Details text null,
    DueDate Date not null,
    EstimatedHours Decimal(5, 2) null,
    ProjectId char(50) not null,
    WorkerId int not null,
    foreign key fk_Task_ProjectWorker (ProjectId, WorkerId)
		references ProjectWorker(ProjectId, WorkerId)
);