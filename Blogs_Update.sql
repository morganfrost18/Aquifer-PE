USE [CnmPro]
GO

/****** Object:  StoredProcedure [dbo].[Blogs_Update]    Script Date: 8/3/2022 2:02:54 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: <Morgan Frost>
-- Create date: <07/01/2022>
-- Description: <Blogs_Update>
-- Code Reviewer:Jordan Poole 07/06/2022

-- MODIFIED BY: author
-- MODIFIED DATE:07/01/2022
-- Code Reviewer:
-- Note:
-- =============================================

CREATE proc [dbo].[Blogs_Update]
	@Id int
	,@BlogTypeId int
	,@AuthorId int
	,@Title nvarchar(50)
	,@Subject nvarchar(50)
	,@Content nvarchar(4000)
	,@IsPublished bit
	,@ImageUrl nvarchar(255)
	,@DatePublish datetime2(7)


/*------TEST CODE------

		Declare @Id int = 15
			,@BlogTypeId int = 1
			,@AuthorId int = 4
			,@Title nvarchar(50) = 'Updated Civil Engineering'
			,@Subject nvarchar(50) = 'Introduction'
			,@Content nvarchar(4000) = 'Content goes here'
			,@IsPublished bit = 0
			,@ImageUrl nvarchar(255) = 'image url placeholder'
			,@DatePublish datetime2(7) = 'July 1, 2022'

		Execute dbo.Blogs_Update
			@Id
			,@BlogTypeId 
			,@AuthorId 
			,@Title 
			,@Subject 
			,@Content 
			,@IsPublished 
			,@ImageUrl
			,@DatePublish

		Select *
		From dbo.Blogs
		Where Id = @Id


*/

AS

BEGIN

UPDATE [dbo].[Blogs]
	SET	[BlogTypeId] = @BlogTypeId
		,[AuthorId] = @AuthorId
		,[Title] = @Title
		,[Subject] = @Subject
		,[Content] = @Content
		,[IsPublished] = @IsPublished
		,[ImageUrl] = @ImageUrl
		,[DatePublish] = @DatePublish

	Where Id = @Id

END
GO

