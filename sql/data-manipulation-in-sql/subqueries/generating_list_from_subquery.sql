--  Create a subquery in the WHERE clause that retrieves all unique hometeam_ID values from the match table.
--  Select the team_long_name and team_short_name from the team table. Exclude all values from the subquery in the main query.
SELECT 
	-- Select the team long and short names
	team_long_name,
	team_short_name
FROM team
-- Exclude all values from the subquery
WHERE team_api_id NOT IN
     (SELECT DISTINCT hometeam_id FROM match);



-- Get teams whose home goal score >= 8
SELECT
	-- Select the team long and short names
	team_long_name,
	team_short_name
FROM team
-- Filter for teams with 8 or more home goals
WHERE team_api_id IN
	  (SELECT hometeam_id
       FROM match
       WHERE home_goal >= 8);