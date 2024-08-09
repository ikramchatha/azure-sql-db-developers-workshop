CREATE PROCEDURE dbo.insert_todo
    @title nvarchar(1000),
    @owner_id [varchar](128),
    @order int
AS

BEGIN

    insert into dbo.todo (title, owner_id, position)
    OUTPUT INSERTED.*
    values (@title, @owner_id, @order);

END;
GO