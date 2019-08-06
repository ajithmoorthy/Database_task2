------Insert and delete using triggers----------------
---this will when you insert the values into the Address table after it automatically update the Address1--- 
create TRIGGER Emp_trigger
ON [dbo].[Addres]
AFTER INSERT,delete
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[Addres1](
	[addre_id]
           ,[district_name]
           ,[Emp_state]
           ,[pincode]
    )
    SELECT
		   [addre_id]
           ,[district_name]
           ,[Emp_state]
           ,[pincode]
	From 
		inserted i;
END
----------------------------------------------------------------------
create TRIGGER sampleTrigger
    ON [dbo].[Addres]
    after DELETE
AS
   DELETE [dbo].[Addres] FROM [dbo].[Addres1] INNER JOIN deleted ON [dbo].[Addres1].addre_id=deleted.addre_id
GO
-----------------------------------------------------------------
INSERT INTO [dbo].[Addres]
           ([addre_id]
           ,[district_name]
           ,[Emp_state]
           ,[pincode])
     VALUES
           (128,'bangalore','karnataka',641908)
GO
-----------------------------------------------
delete  from[dbo].[Addres] where addre_id=128