USE [CnmPro]
GO

/****** Object:  StoredProcedure [dbo].[BlogTypes_SelectAll]    Script Date: 8/3/2022 2:03:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[BlogTypes_SelectAll]

/*
		Execute dbo.BlogTypes_SelectAll
*/

AS

BEGIN

SELECT	[Id]
		,[Name]
From [dbo].[BlogTypes]

END
GO

