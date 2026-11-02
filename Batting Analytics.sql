-- =====================================================
-- SECTION B : BATTING ANALYTICS
-- =====================================================


-- =====================================================
-- Query 11 : Top 10 Run Scorers
-- Purpose : Displays the leading run scorers in IPL.
-- =====================================================

SELECT
    batter,
    total_runs
FROM vw_batting_stats
ORDER BY total_runs DESC
LIMIT 10;



-- =====================================================
-- Query 12 : Highest Batting Average
-- Purpose : Best batting average (minimum 20 innings).
-- =====================================================

SELECT
    batter,
    batting_average
FROM vw_batting_stats
WHERE innings >= 20
ORDER BY batting_average DESC
LIMIT 10;



-- =====================================================
-- Query 13 : Highest Strike Rate
-- Purpose : Best strike rate (minimum 500 runs).
-- =====================================================

SELECT
    batter,
    strike_rate
FROM vw_batting_stats
WHERE total_runs >= 500
ORDER BY strike_rate DESC
LIMIT 10;



-- =====================================================
-- Query 14 : Most Hundreds
-- Purpose : Players with the highest number of centuries.
-- =====================================================

SELECT
    batter,
    hundreds
FROM vw_batting_stats
ORDER BY hundreds DESC, total_runs DESC;



-- =====================================================
-- Query 15 : Most Fifties
-- Purpose : Players scoring the highest number of fifties.
-- =====================================================

SELECT
    batter,
    fifties
FROM vw_batting_stats
ORDER BY fifties DESC;



-- =====================================================
-- Query 16 : Highest Individual Scores
-- Purpose : Best innings in IPL history.
-- =====================================================

SELECT
    batter,
    highest_score
FROM vw_batting_stats
ORDER BY highest_score DESC
LIMIT 20;



-- =====================================================
-- Query 17 : Best Boundary Hitters
-- Purpose : Players scoring highest percentage of runs
-- through boundaries.
-- =====================================================

SELECT
    batter,
    boundary_percentage
FROM vw_batting_stats
WHERE total_runs >= 1000
ORDER BY boundary_percentage DESC;



-- =====================================================
-- Query 18 : Players Facing Most Balls
-- Purpose : Shows players with longest batting careers.
-- =====================================================

SELECT
    batter,
    balls_faced
FROM vw_batting_stats
ORDER BY balls_faced DESC
LIMIT 10;



-- =====================================================
-- Query 19 : Most Sixes
-- Purpose : Biggest power hitters.
-- =====================================================

SELECT
    batter,
    sixes
FROM vw_batting_stats
ORDER BY sixes DESC
LIMIT 10;



-- =====================================================
-- Query 20 : Most Fours
-- Purpose : Players with highest number of fours.
-- =====================================================

SELECT
    batter,
    fours
FROM vw_batting_stats
ORDER BY fours DESC
LIMIT 10;



-- =====================================================
-- Query 21 : Lowest Dot Ball Percentage
-- Purpose : Most attacking batters.
-- =====================================================

SELECT
    batter,
    dot_ball_percentage
FROM vw_batting_stats
WHERE balls_faced >= 500
ORDER BY dot_ball_percentage
LIMIT 10;



-- =====================================================
-- Query 22 : Best Boundary Frequency
-- Purpose : Fewest balls required per boundary.
-- =====================================================

SELECT
    batter,
    balls_per_boundary
FROM vw_batting_stats
WHERE total_runs >= 500
ORDER BY balls_per_boundary
LIMIT 10;



-- =====================================================
-- Query 23 : Players With Most Not Outs
-- Purpose : Batters remaining unbeaten most often.
-- =====================================================

SELECT
    batter,
    not_outs
FROM vw_batting_stats
ORDER BY not_outs DESC
LIMIT 10;



-- =====================================================
-- Query 24 : Orange Cap Standings
-- Purpose : Simulates Orange Cap rankings.
-- =====================================================

SELECT
    batter,
    total_runs,
    batting_average,
    strike_rate
FROM vw_batting_stats
ORDER BY total_runs DESC;



-- =====================================================
-- Query 25 : Complete Batting Leaderboard
-- Purpose : Displays complete batting rankings.
-- =====================================================

SELECT
    batter,
    total_runs,
    batting_average,
    strike_rate,
    hundreds,
    fifties,
    fours,
    sixes
FROM vw_batting_stats
ORDER BY total_runs DESC;