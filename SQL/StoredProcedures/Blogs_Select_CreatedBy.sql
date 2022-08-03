USE [CnmPro]
GO

/****** Object:  StoredProcedure [dbo].[Blogs_Select_ByCreatedBy]    Script Date: 8/3/2022 2:01:52 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: <Morgan Frost>
-- Create date: <07/01/2022>
-- Description: <Blogs_Select_ByCreatedBy>
-- Code Reviewer:Jordan Poole 07/06/2022

-- MODIFIED BY: author
-- MODIFIED DATE:07/01/2022
-- Code Reviewer:
-- Note:
-- =============================================

CREATE proc [dbo].[Blogs_Select_ByCreatedBy]
	@AuthorId int
	,@PageIndex int
	,@PageSize int

/*------TEST CODE------

		Declare @AuthorId int = 4
				,@PageIndex int = 0
				,@PageSize int = 100

		Execute dbo.Blogs_Select_ByCreatedBy
			@AuthorId
			,@PageIndex
			,@PageSize
*/

AS

BEGIN
	Declare @offset int = @PageIndex * @PageSize

SELECT	b.[Id]
		,b.[Title]
		,b.[Subject]
		,b.[Content]
		,b.[IsPublished]
		,b.[ImageUrl]
		,b.[DateCreated]
		,b.[DateModified]
		,b.[DatePublish]
		,bt.[Id]
		,bt.[Name] as BlogType
		,b.AuthorId
		,up.[FirstName]
		,up.[LastName]
		,up.[Mi]
		,up.[AvatarUrl]
		,TotalCount = COUNT(1) OVER()

	FROM dbo.Blogs as b inner join dbo.BlogTypes as bt
						on bt.Id = b.BlogTypeId
						inner join dbo.UserProfiles as up
						on up.UserId = b.AuthorId		

	Where AuthorId = @AuthorId
	ORDER BY b.Id

	OFFSET @offSet Rows
	--Fetch Next @PageSize Rows ONLY

END
GO

