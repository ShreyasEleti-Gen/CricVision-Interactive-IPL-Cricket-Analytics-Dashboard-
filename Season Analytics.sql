-- =====================================================
-- Query 76 : Matches Played Per Season
-- =====================================================

SELECT
    season,
    COUNT(*) AS total_matches
FROM matches
GROUP BY season
ORDER BY season;



-- =====================================================
-- Query 77 : Total Runs Scored Per Season
-- =====================================================

SELECT
    m.season,
    SUM(d.total_runs) AS total_runs
FROM deliveries d
JOIN matches m
ON d.match_id=m.match_id
GROUP BY m.season
ORDER BY m.season;



-- =====================================================
-- Query 78 : Total Wickets Per Season
-- =====================================================

SELECT
    m.season,
    SUM(d.wicket) AS total_wickets
FROM deliveries d
JOIN matches m
ON d.match_id=m.match_id
GROUP BY m.season
ORDER BY m.season;



-- =====================================================
-- Query 79 : Average First Innings Score Per Season
-- =====================================================

SELECT
    season,
    ROUND(AVG(first_innings_score),2) AS average_first_innings

FROM(

SELECT

m.season,
m.match_id,

SUM(
CASE
WHEN d.innings=1
THEN d.total_runs
ELSE 0
END
) AS first_innings_score

FROM matches m
JOIN deliveries d
ON m.match_id=d.match_id

GROUP BY
m.season,
m.match_id

)t

GROUP BY season
ORDER BY season;



-- =====================================================
-- Query 80 : Highest Team Total By Season
-- =====================================================

SELECT

m.season,

MAX(team_score) AS highest_team_score

FROM(

SELECT

match_id,
innings,
batting_team,

SUM(total_runs) AS team_score

FROM deliveries

GROUP BY
match_id,
innings,
batting_team

)t

JOIN matches m
ON t.match_id=m.match_id

GROUP BY season
ORDER BY season;



-- =====================================================
-- Query 81 : Most Player of the Match Awards
-- =====================================================

SELECT

player_of_match,

COUNT(*) AS awards

FROM matches

GROUP BY player_of_match

ORDER BY awards DESC

LIMIT 10;



-- =====================================================
-- Query 82 : Season Wise Winning Teams
-- =====================================================

SELECT

season,
winner,

COUNT(*) AS wins

FROM matches

GROUP BY season,winner

ORDER BY season,wins DESC;



-- =====================================================
-- Query 83 : Most Matches Hosted By Season
-- =====================================================

SELECT

season,

COUNT(*) matches

FROM matches

GROUP BY season

ORDER BY matches DESC;



-- =====================================================
-- Query 84 : Venues Used Every Season
-- =====================================================

SELECT

venue,

COUNT(DISTINCT season) seasons

FROM matches

GROUP BY venue

ORDER BY seasons DESC;



-- =====================================================
-- Query 85 : Complete Season Summary
-- =====================================================

SELECT

season,

COUNT(*) matches,

COUNT(DISTINCT venue) venues,

COUNT(DISTINCT city) cities

FROM matches

GROUP BY season

ORDER BY season;