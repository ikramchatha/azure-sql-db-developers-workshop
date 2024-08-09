CREATE PROCEDURE dbo.update_todo
    @id nvarchar(100),
    @title nvarchar(1000) = NULL,
    @owner_id [varchar](128),
    @completed bit = NULL,
    @order int = NULL
AS

BEGIN

    update dbo.todo 
       set title = ISNULL(@title,title),
           completed = ISNULL(@completed,completed),
           position = ISNULL(@order,position)
    OUTPUT INSERTED.*
     where id = @id
       and owner_id = @owner_id;

END;
GO