-- delete unwanted column as part of data cleaning however, rest of the data is prepared in Excel to format dates (using TEXT and relevant date formula) --

select * from [dbo].[metacritic dataset];
alter table [dbo].[metacritic dataset] drop column games_score_url;

-- order the platform and score to gain broad understanding in what titles correlated with which platform --

select * from [dbo].[metacritic dataset]
order by games_platform, games_score desc;

-- Check how many console platforms are recorded from the top 100 list (there's 18) --

select count(distinct games_platform) from [dbo].[metacritic dataset];

-- And what platform types they are --

select games_platform from [dbo].[metacritic dataset] group by games_platform;

-- Let's specifically see how many games are rated on their respective platforms (X = 22, PS = 37, NC = 23)

select * from [dbo].[metacritic dataset] 
where games_platform IN ('Xbox', 'Xbox 360', 'Xbox One', 'Xbox Series X', 'Xbox Series S')
order by games_score desc;

select * from [dbo].[metacritic dataset] 
where games_platform IN ('PlayStation', 'PlayStation 2', 'PlayStation 3', 'PlayStation 4', 'PlayStation 5')
order by games_score desc;

select * from [dbo].[metacritic dataset] 
where games_platform IN ('Nintendo 64', '3DS', 'Switch', 'Dreamcast', 'Wii', 'GameBoy Advance', 'GameCube', 'Wii U')
order by games_score desc;

select count(games_platform) from [dbo].[metacritic dataset] where games_platform in('Xbox', 'Xbox 360', 'Xbox One', 'Xbox Series X', 'Xbox Series S');
select count(games_platform) from [dbo].[metacritic dataset] where games_platform in('PlayStation', 'PlayStation 2', 'PlayStation 3', 'PlayStation 4', 'PlayStation 5');
select count(games_platform) from [dbo].[metacritic dataset] where games_platform in('Nintendo 64', '3DS', 'Switch', 'Dreamcast', 'Wii', 'GameBoy Advance', 'GameCube', 'Wii U');


-- Now to analyse the dates to find the top 3 years for when games released upon receiving high review scores -- 

select games_year, count(games_year) from [dbo].[metacritic dataset] group by games_year order by count(games_year) desc;