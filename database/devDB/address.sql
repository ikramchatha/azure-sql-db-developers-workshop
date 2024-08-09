CREATE TABLE [dbo].[address] (
    [address_id]        INT            IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([address_id] ASC),
    [person_id]         INT            NOT NULL,
    [address]           NVARCHAR (200) NOT NULL,
    CONSTRAINT [FK_address_person] FOREIGN KEY ([person_id]) REFERENCES [dbo].[person] ([person_id])
);
