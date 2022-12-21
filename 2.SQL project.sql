/****** cleaning dim_datetable  ******/
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as date, 
  --,[DayNumberOfWeek] 
  [EnglishDayNameOfWeek] as day, 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] as weeknumber, 
  [EnglishMonthName] as month, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] as monthnumber, 
  [CalendarQuarter] as quarter, 
  [CalendarYear] as year --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear] 
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
where 
  CalendarYear >= 2019
