SELECT * FROM [dbo].[OTT Dataset];

-- Delete unwanted top 6 rows --

DELETE FROM [dbo].[OTT Dataset] WHERE Title BETWEEN 'CDID' AND 'Next release';

SELECT COUNT (*) AS NumberOfColumns FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'OTT Dataset';

-- 720 Rows, 9 Columns --

SELECT * FROM [dbo].[OTT Dataset] WHERE [UK Visits Abroad Expenditure (SA)] IS NULL;

-- 132 NULL cells found in Col 5,6,8,9 --

UPDATE [dbo].[OTT Dataset] SET [UK Visits Abroad Expenditure (SA)] = '0' WHERE [UK Visits Abroad Expenditure (SA)] IS NULL;
UPDATE [dbo].[OTT Dataset] SET [UK Visits Abroad - All Visits (SA)] = '0' WHERE [UK Visits Abroad - All Visits (SA)] IS NULL;
UPDATE [dbo].[OTT Dataset] SET [OS Visits to UK Earnings (SA)] = '0' WHERE [OS Visits to UK Earnings (SA)] IS NULL;

-- Cleared NULL values with a numeric value for clarity --

SELECT Dates, [OS Visits to UK - All Visits (NSA)], [OS Visits To The UK (SA)], [UK Visits Abroad - All Visits (NSA)], [UK Visits Abroad - All Visits (SA)]
FROM [dbo].[OTT Dataset];

SELECT * FROM [dbo].[OTT Dataset] WHERE Dates BETWEEN '2019' AND '2022 MAY' ORDER BY Dates Desc;

SELECT * FROM [dbo].[OTT Dataset] WHERE Dates IN('2019 APR', '2019 MAR', '2019 MAY', '2022 MAR', '2022 APR', '2022 MAY');

-- Filtering accordingly to extract data for visualisation --

SELECT Dates, [OS Visits to UK - All Visits (NSA)] FROM [dbo].[OTT Dataset] 
ORDER BY [OS Visits to UK - All Visits (NSA)] DESC;

ORDER BY [OS Visits to UK - All Visits (NSA)] ASC;

SELECT Dates, [UK Visits Abroad - All Visits (NSA)] FROM [dbo].[OTT Dataset] 
ORDER BY [UK Visits Abroad - All Visits (NSA)] DESC;

ORDER BY [UK Visits Abroad - All Visits (NSA)] ASC;

SELECT MAX([UK Visits Abroad - All Visits (NSA)]) FROM [dbo].[OTT Dataset]

SELECT MIN([UK Visits Abroad - All Visits (NSA)]) FROM [dbo].[OTT Dataset];

-- Find lowest/highest value, quarterly --

SELECT Dates, [UK Visits Abroad - All Visits (NSA)] FROM [dbo].[OTT Dataset] WHERE Dates BETWEEN '2019 Q1' AND '2022 Q4'
ORDER BY [UK Visits Abroad - All Visits (NSA)] DESC;

ORDER BY [UK Visits Abroad - All Visits (NSA)] ASC;

SELECT Dates, [OS Visits to UK - All Visits (NSA)] FROM [dbo].[OTT Dataset v2] WHERE Dates BETWEEN '2019 Q1' AND '2022 Q4'
ORDER BY [OS Visits to UK - All Visits (NSA)] ASC;

ORDER BY [OS Visits to UK - All Visits (NSA)] DESC;