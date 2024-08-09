CREATE TABLE [dbo].[person] (
    [person_id]        INT IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([person_id] ASC),
    [person_name]      NVARCHAR (200)      NOT NULL,
    [person_email]     NVARCHAR (200)      NOT NULL,
    [pet_preference]   NVARCHAR (100)      NOT NULL
);

