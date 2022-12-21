/****** Script for SelectTopNRows command from SSMS  ******/
SELECT p.[ProductKey] as ProductKey,
       p.[ProductAlternateKey] as ProductAlternateKey,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
        p.[EnglishProductName] as ProductName,
psc.EnglishProductSubcategoryName as ' Sub category', -- join from ProductSubcategory table
pc.EnglishProductCategoryName as 'Product category'      ,     -- join from Productcategory table       

      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      p.[Color] as Color,
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      p.[Size] as 'Product Size',
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      p.[ProductLine] as 'Product Line',
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      p.[ModelName] as 'Product Model Name',
      --,[LargePhoto]
      p.[EnglishDescription] as 'Product English Description',
      --,[FrenchDescription]
      --,[ChineseDescription]
      p.[ArabicDescription] as 'Product Arabic Description',
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
	  isnull (p.Status,'outdated') as 'Product Status'
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  left join [AdventureWorksDW2019].[dbo].[DimProductSubcategory] psc
  on   p.ProductSubcategorykey = psc.ProductSubcategorykey  
   left join [AdventureWorksDW2019].[dbo].[DimProductcategory] pc
   on pc.Productcategorykey = psc.Productcategorykey
   order by p.Productkey asc

