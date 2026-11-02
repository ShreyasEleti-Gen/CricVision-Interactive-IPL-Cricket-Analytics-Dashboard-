-- =====================================================
-- Query 86 : Rank Players By Runs
-- =====================================================

SELECT

batter,

total_runs,

RANK() OVER(ORDER BY total_runs DESC) player_rank

FROM vw_batting_stats;



-- =====================================================
-- Query 87 : Dense Rank Players By Runs
-- =====================================================

SELECT

batter,

total_runs,

DENSE_RANK() OVER(ORDER BY total_runs DESC) as denserank

FROM vw_batting_stats;



-- =====================================================
-- Query 88 : Row Number Leaderboard
-- =====================================================

SELECT

batter,

total_runs,

ROW_NUMBER() OVER(ORDER BY total_runs DESC) row_no

FROM vw_batting_stats;



-- =====================================================
-- Query 89 : Top 3 Batters Per Season
-- =====================================================

WITH season_runs AS(

SELECT

m.season,

d.batter,

SUM(d.batter_runs) runs

FROM deliveries d

JOIN matches m
ON d.match_id=m.match_id

GROUP BY
m.season,
d.batter

)

SELECT *

FROM(

SELECT

*,

RANK() OVER(PARTITION BY season ORDER BY runs DESC) rnk

FROM season_runs

)t

WHERE rnk<=3;



-- =====================================================
-- Query 90 : Top 3 Bowlers Per Season
-- =====================================================

WITH season_wickets AS(

SELECT

m.season,

d.bowler,

SUM(
CASE
WHEN wicket=1
AND dismissal_kind NOT IN
('run out','retired hurt','retired out','obstructing the field')
THEN 1
ELSE 0
END
) wickets

FROM deliveries d

JOIN matches m
ON d.match_id=m.match_id

GROUP BY
m.season,
d.bowler

)

SELECT *

FROM(

SELECT

*,

RANK() OVER(PARTITION BY season ORDER BY wickets DESC) rnk

FROM season_wickets

)t

WHERE rnk<=3;



-- =====================================================
-- Query 91 : Running Total Of Runs
-- =====================================================

SELECT

batter,

total_runs,

SUM(total_runs) OVER(
ORDER BY total_runs DESC
) cumulative_runs

FROM vw_batting_stats;



-- =====================================================
-- Query 92 : Running Total Of Wickets
-- =====================================================

SELECT

bowler,

wickets,

SUM(wickets) OVER(
ORDER BY wickets DESC
) cumulative_wickets

FROM vw_bowling_stats;



-- =====================================================
-- Query 93 : NTILE Player Distribution
-- =====================================================

SELECT

batter,

total_runs,

NTILE(4) OVER(
ORDER BY total_runs DESC
) performance_quartile

FROM vw_batting_stats;



-- =====================================================
-- Query 94 : Previous Season Comparison
-- =====================================================

SELECT

season,

COUNT(*) matches,

LAG(COUNT(*))
OVER(ORDER BY season) previous_season_matches

FROM matches

GROUP BY season;



-- =====================================================
-- Query 95 : Match Growth
-- =====================================================

SELECT

season,

COUNT(*) matches,

COUNT(*)-
LAG(COUNT(*))
OVER(ORDER BY season) growth

FROM matches

GROUP BY season;



-- =====================================================
-- Query 96 : Top 10 Players By Combined Score
-- =====================================================

SELECT

player,

runs,

wickets,

(runs*0.1+wickets*20) score

FROM vw_player_summary

ORDER BY score DESC

LIMIT 10;



-- =====================================================
-- Query 97 : Top Economy Bowlers Ranking
-- =====================================================

SELECT

bowler,

economy,

RANK() OVER(
ORDER BY economy
) economy_rank

FROM vw_bowling_stats

WHERE wickets>=50;



-- =====================================================
-- Query 98 : Top Batting Average Ranking
-- =====================================================

SELECT

batter,

batting_average,

RANK() OVER(
ORDER BY batting_average DESC
) average_rank

FROM vw_batting_stats

WHERE innings>=20;



-- =====================================================
-- Query 99 : Best All-rounders Ranking
-- =====================================================

SELECT

player,

runs,

wickets,

RANK() OVER(
ORDER BY (runs*0.1+wickets*20) DESC
) overall_rank

FROM vw_player_summary;



-- =====================================================
-- Query 100 : Overall Project Dashboard Query
-- =====================================================

SELECT

COUNT(*) total_players,

SUM(runs) total_runs,

SUM(wickets) total_wickets,

AVG(batting_average) avg_batting_average,

AVG(economy) avg_economy

FROM vw_player_summary;