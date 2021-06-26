/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) 
 c.customerkey AS CustomerKey,
 -- [CustomerKey],
 
 -- [GeographyKey],
 -- [CustomerAlternateKey],
 -- [Title],
 
 c.firstname AS [First Name],
 -- [FirstName],
 -- [MiddleName],

 c.lastname AS [Last Name],
 -- [LastName],
 -- [NameStyle],
 -- [BirthDate],
 -- [MaritalStatus],
 -- [Suffix],
 
 CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS GENDER,
 -- [Gender],
 
 -- [EmailAddress],
 -- [YearlyIncome],
 -- [TotalChildren],
 -- [NumberChildrenAtHome],
 -- [EnglishEducation],
 -- [SpanishEducation],
 -- [FrenchEducation],
 -- [EnglishOccupation],
 -- [SpanishOccupation],
 -- [FrenchOccupation],
 -- [HouseOwnerFlag],
 -- [NumberCarsOwned],
 -- [AddressLine1],
 -- [AddressLine2],
 -- [Phone],

 c.datefirstpurchase AS DateFirstPurchase,
 -- [DateFirstPurchase]
 
 g.city AS [Customer City]
 -- [CommuteDistance]

FROM
	dbo.dimcustomer AS c
	LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey
ORDER BY
CustomerKey ASC -- Ordered List by CustomerKey
