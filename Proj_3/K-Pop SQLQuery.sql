-- First step is to apply data cleaning techniques --

select * from [dbo].[k pop first set];

alter table [dbo].[k pop first set] drop column [Korean Name], [K# Stage Name];

update [dbo].[k pop first set] set [Birthplace] = 'N/A' where [Birthplace] IS NULL;
update [dbo].[k pop first set] set [Other Group]= 'N/A' where [Other Group] IS NULL;

delete from [dbo].[k first set] where [Stage Name] IS NULL;

-- Let's analyse the gender differences and extract this data --

select [Gender], count([Gender]) from [dbo].[k pop first set] group by [Gender];

-- Results show F = 634, M = 676 --

-- Next, let's look at country and difference between Korea and foreign territories --

select [Country], count([Country]) from [dbo].[k pop first set] group by [Country] order by count([Country]) desc;

-- And see how the DOB by year compares -- 

select [Year], count([Year]) from [dbo].[k pop first set] group by [Year] order by count([Year]) desc;

-- Now let's see how many are in other groups and what genders they belong to --

select [Other Group], [Gender], count([Other Group]) from [dbo].[k pop first set] group by [Other Group], [Gender] order by count([Other Group]) desc;
select [Other Group], [Gender], count([Other Group]) from [dbo].[k pop first set] where not [Other Group] = 'N/A' group by [Other Group], [Gender] order by count([Other Group]) desc;

select count([Other Group]) from [dbo].[k pop first set] where not [Other Group] = 'N/A';
select count([Other Group]) from [dbo].[k pop first set] where [Other Group] = 'N/A';

-- We'll check to compare between Korea and other countries, the gender differences --

select [Country], [Gender], count([Gender]) from [dbo].[k pop first set] where [Country] = 'South Korea' group by [Gender], [Country];
select [Country], [Gender], count([Gender]) from [dbo].[k pop first set] where not [Country] = 'South Korea' group by [Gender], [Country] order by count([Gender]);

-- Now to find the ages --

select [Age], [Gender], count([Age]) from [dbo].[k pop first set] where [Stage Name] IS NOT NULL group by [Age], [Gender] order by count([Age]) desc;