/* 
You will examine the number of matches played in 3 seasons within each country listed in the database. This is much easier to explore with each season's matches in separate columns. Using the country and unfiltered match table, you will count the number of matches played in each country during the 2012/2013, 2013/2014, and 2014/2015 match seasons.
*/

SELECT 
	c.name AS country,
    -- Count matches in each of the 3 seasons
	COUNT(CASE WHEN m.season = '2012/2013' THEN m.id END) AS matches_2012_2013,
	COUNT(CASE WHEN m.season = '2013/2014' THEN m.id END) AS matches_2013_2014,
	COUNT(CASE WHEN m.season = '2014/2015' THEN m.id END) AS matches_2014_2015
FROM country AS c
LEFT JOIN match AS m
ON c.id = m.country_id
-- Group by country name alias
GROUP BY c.name;



-- ALternative way
-- SELECT 
-- 	c.name AS country,
--     -- Sum the total records in each season where the home team won
--         SUM(CASE WHEN m.season = '2012/2013' AND m.home_goal > m.away_goal 
--         THEN 1 ELSE 0 END) AS matches_2012_2013,
--  	SUM(CASE WHEN m.season = '2013/2014' AND m.home_goal  > m.away_goal 
--         THEN 1 ELSE 0 END) AS matches_2013_2014,
-- 	SUM(CASE WHEN m.season = '2014/2015' AND m.home_goal > m.away_goal THEN 1 ELSE 0 END) AS matches_2014_2015
-- FROM country AS c
-- LEFT JOIN match AS m
-- ON c.id = m.country_id
-- -- Group by country name alias
-- GROUP BY c.name;