-- bring up the table and do data cleaning process --

select * from [dbo].[steam 250];

alter table [dbo].[steam 250] drop column [title genre url], [title release date url], [title free url], [title platform one];

update [dbo].[steam 250] set [title paid] = '0' where [title paid] is null;

update [dbo].[steam 250] set [title free] = 'Paid' where [title free] = '0';

-- Next, check which year was most popular --

select [title release year], count([title release year]) from [dbo].[steam 250] group by [title release year] order by [title release year] desc;

-- Null value found, check which title this is --

select * from [dbo].[steam 250] where [title release year] IS NULL;

-- Result returned title name "Don't Starve", below process updates this --

select distinct [title release month] from [dbo].[steam 250];

select * from [dbo].[steam 250] order by [title name] asc;

update [dbo].[steam 250] set [title release month] = 'April' where [title release month] = '1900/01/00';

update [dbo].[steam 250] set [title release year] = '2013' where [title release year] IS NULL;

select * from [dbo].[steam 250] where [title release month] = 'April' and [title release year] = '2013';

-- Check what years were most popular and numerical difference between free and paid games --

select top 10 [title release year], count([title release year]) from [dbo].[steam 250] group by [title release year] order by count([title release year]) desc;

select [title free], count([title free]) from [dbo].[steam 250] group by [title free] order by count([title free]) desc;

-- Most and least popular genres listed --

select top 10 [title genre], count([title genre]) from [dbo].[steam 250] group by [title genre] order by count([title genre]) desc;
select top 10 [title genre], count([title genre]) from [dbo].[steam 250] group by [title genre] order by count([title genre]) asc;

-- Surprising that there's only one action-adventure title, given its popularity, upon further search this was Star Wars: Jedi Fallen Order --

select * from [dbo].[steam 250] where [title genre] = 'Action-Adventure';

-- What were the biggest and lowest price points from top 250 --

select top 10 [title paid], count([title paid]) from [dbo].[steam 250] group by [title paid] order by count([title paid]) desc;

-- check top 5 games for most and least expensive (not including F2P) --

select top 5 [title paid], [title name] from [dbo].[steam 250] where [title paid] > 0.01 order by [title paid] asc;
select top 5 [title paid], [title name] from [dbo].[steam 250] order by [title paid] desc;

-- Top 10 rated F2P games by votes --

select top 10 * from [dbo].[steam 250] where [title free] = 'free' order by [title total quantity] desc;

-- Top 10 rated F2P games by score --

select top 10 * from [dbo].[steam 250] where [title free] = 'free' order by [title rating] desc;