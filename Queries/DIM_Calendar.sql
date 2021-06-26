/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  
 [DateKey],
 [FullDateAlternateKey] AS Date,
 [DayNumberOfWeek] AS [Day Of Week],
 [EnglishDayNameOfWeek] AS Day,
 --[SpanishDayNameOfWeek],
 --[FrenchDayNameOfWeek],
 --[DayNumberOfMonth],
 --[DayNumberOfYear],
 --[WeekNumberOfYear],
 [EnglishMonthName] AS Month,
 Left([EnglishMonthName], 3) AS [Month Abbrev.],
 --[SpanishMonthName],
 --[FrenchMonthName],
 [MonthNumberOfYear] AS [Month No.],
 [CalendarQuarter] AS Quarter,
 [CalendarYear] AS Year
 --[CalendarSemester],
 --[FiscalQuarter],
 --[FiscalYear],
 --[FiscalSemester]
  
FROM 
	[AdventureWorksDW2019].[dbo].[DimDate]
WHERE
	CalendarYear >=2019;
	