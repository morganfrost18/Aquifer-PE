USE [CnmPro]
GO

/****** Object:  StoredProcedure [dbo].[Blogs_Select_ById]    Script Date: 8/3/2022 2:02:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: <Morgan Frost>
-- Create date: <07/01/2022>
-- Description: <Blogs_Select_ById>
-- Code Reviewer: Jordan Poole 07/06/2022

-- MODIFIED BY: author
-- MODIFIED DATE:07/01/2022
-- Code Reviewer:
-- Note:
-- =============================================

CREATE proc [dbo].[Blogs_Select_ById]
	@Id int

/*------TEST CODE------

		Declare @Id int = 18;
		Execute dbo.Blogs_Select_ById
			@Id
*/

AS

BEGIN

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

	FROM dbo.Blogs as b inner join dbo.BlogTypes as bt
						on bt.Id = b.BlogTypeId
						inner join dbo.UserProfiles as up
						on up.UserId = b.AuthorId


	WHERE b.Id = @Id

END
GO

