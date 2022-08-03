USE [CnmPro]
GO

/****** Object:  StoredProcedure [dbo].[Blogs_SelectAll]    Script Date: 8/3/2022 2:02:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: <Morgan Frost>
-- Create date: <07/01/2022>
-- Description: <Blogs_SelectAll>
-- Code Reviewer:Jordan Poole 07/06/2022

-- MODIFIED BY: author
-- MODIFIED DATE:07/01/2020
-- Code Reviewer:
-- Note:
-- =============================================

CREATE proc [dbo].[Blogs_SelectAll]
	@PageIndex int
	,@PageSize int

/*------TEST CODE------

		Declare @PageIndex int = 0
				,@PageSize int = 10

		Execute dbo.Blogs_SelectAll
			@PageIndex
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
		,bt.[Id] as BlogType
		,bt.[Name]
		,up.[Id] as AuthorId
		,up.[UserId] as Author
		,up.[FirstName]
		,up.[LastName]
		,up.[Mi]
		,up.[AvatarUrl]
		,TotalCount = COUNT(1) OVER()

	FROM dbo.Blogs as b inner join dbo.BlogTypes as bt
						on bt.Id = b.BlogTypeId
						inner join dbo.UserProfiles as up
						on up.UserId = b.AuthorId
	

	ORDER BY b.DateCreated DESC

	OFFSET @offSet Rows
	--Fetch Next @PageSize Rows ONLY

END

GO

