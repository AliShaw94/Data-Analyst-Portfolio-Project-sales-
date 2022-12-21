/****** Cleaning dim _ CustomerTable  ******/
SELECT 
  c.[CustomerKey] as CustomerKey, 
  --     ,[GeographyKey]
  --     ,[CustomerAlternateKey]
  --     ,[Title] 
  c.[FirstName] as FirstName, 
  C.[MiddleName], 
  c.[LastName] as LastName, 
  c.FirstName + ' ' + c.LastName as Fullname, 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE C.[Gender] WHEN 'M' then 'Male' when 'F' then 'Female' end AS [Gender], 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.[DateFirstPurchase] as DateFirstPurchase, 
  --,[CommuteDistance]
  g.city as customercity 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] c 
  left join [AdventureWorksDW2019].[dbo].DimGeography G on g.Geographykey = c.Geographykey

