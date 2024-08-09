CREATE PROCEDURE dbo.delete_todo
    @id nvarchar(100),
    @owner_id [varchar](128)
AS

BEGIN

    delete from dbo.todo
    where id = @id
    and owner_id = @owner_id;

END;
GO
