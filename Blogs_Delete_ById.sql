USE [CnmPro]
GO

/****** Object:  StoredProcedure [dbo].[Blogs_Delete_ById]    Script Date: 8/3/2022 1:57:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: <Morgan Frost>
-- Create date: <07/01/2022>
-- Description: <Blogs_Delete_ById>
-- Code Reviewer:Jordan Poole 07/06/2022

-- MODIFIED BY: author
-- MODIFIED DATE:07/01/2020
-- Code Reviewer:
-- Note:
-- =============================================

CREATE proc [dbo].[Blogs_Delete_ById]
	@Id int

/*------TEST CODE------

		Declare @Id int = 10

		Select *
		From dbo.Blogs
		Where Id = @Id

		Execute dbo.Blogs_Delete_ById
			@Id

		Select *
		From dbo.Blogs
		Where Id = @Id
*/

AS

BEGIN

DELETE FROM [dbo].[Blogs]
	Where Id = @Id

END
GO

