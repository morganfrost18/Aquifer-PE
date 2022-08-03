USE [CnmPro]
GO

/****** Object:  StoredProcedure [dbo].[Blogs_Insert]    Script Date: 8/3/2022 1:59:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: <Morgan Frost>
-- Create date: <07/01/2022>
-- Description: <Blogs_Insert>
-- Code Reviewer:Jordan Poole 07/06/2022

-- MODIFIED BY: author
-- MODIFIED DATE:07/01/2022
-- Code Reviewer:
-- Note:
-- =============================================

CREATE proc [dbo].[Blogs_Insert]
	@BlogTypeId int
	,@AuthorId int
	,@Title nvarchar(50)
	,@Subject nvarchar(50)
	,@Content nvarchar(4000)
	,@IsPublished bit
	,@ImageUrl nvarchar(255)
	,@DatePublish datetime2(7)
	,@Id int OUTPUT

/*------TEST CODE------
Declare @Id int = 0;


Declare @BlogTypeId int = 1
		,@AuthorId int = 4
		,@Title nvarchar(50) = 'Civil Engineering 101'
		,@Subject nvarchar(50) = 'Introduction'
		,@Content nvarchar(4000) = 'Content goes here'
		,@IsPublished bit = 0
		,@ImageUrl nvarchar(255) = 'image url placeholder'
		,@DatePublish datetime2(7) = 'July 1, 2022'

Execute dbo.Blogs_Insert
		@BlogTypeId
		,@AuthorId 
		,@Title 
		,@Subject 
		,@Content 
		,@IsPublished 
		,@ImageUrl
		,@DatePublish
		,@Id OUTPUT

	Select @Id

Select *
From dbo.Blogs
	


*/

AS

BEGIN




INSERT INTO

[dbo].[Blogs]
		([BlogTypeId] 
		,[AuthorId]
		,[Title]
		,[Subject] 
		,[Content]
		,[IsPublished] 
		,[ImageUrl] 
		,[DatePublish]) 

	VALUES
		(@BlogTypeId
		,@AuthorId
		,@Title
		,@Subject
		,@Content
		,@IsPublished
		,@ImageUrl
		,@DatePublish)

	SET @Id = SCOPE_IDENTITY()



END
GO

