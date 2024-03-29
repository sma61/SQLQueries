/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Age]
      ,[Birth Place]
	  ,SUBSTRING([birth place],0,CHARINDEX(',',[birth place])) BirthPlaceCity
	  ,SUBSTRING([birth place],CHARINDEX(',',[birth place]) + 1,LEN([birth place])) BirthPlaceState
      ,[Birthday]
      ,[College]
      ,[Current Status]
      ,[Current Team]
      ,[Experience]
      ,[Height (inches)]
      ,[High School]
      ,[High School Location]
      ,[Name]
	  ,SUBSTRING(name,0,CHARINDEX(',',name)) LastName
	  ,SUBSTRING([name],CHARINDEX(',',[name]) + 1,LEN([name])) FirstName
      ,[Number]
      ,[Player Id]
      ,[Position]
      ,[Weight (lbs)]
      ,[Years Played]
  FROM [FootballStats].[dbo].[Basic_Stats]

 BEGIN TRANSACTION
 UPDATE Basic_Stats 
 SET 
 BirthPlaceCity = SUBSTRING([birth place],0,CHARINDEX(',',[birth place])),
 BirthPlaceState = SUBSTRING([birth place],CHARINDEX(',',[birth place]) + 1,LEN([birth place])),
 FIrstName = SUBSTRING([name],CHARINDEX(',',[name]) + 1,LEN([name])),
 LastName = SUBSTRING(name,0,CHARINDEX(',',name))