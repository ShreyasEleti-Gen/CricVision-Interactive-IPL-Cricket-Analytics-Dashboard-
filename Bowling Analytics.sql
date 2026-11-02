-- =====================================================
-- SECTION C : BOWLING ANALYTICS
-- =====================================================


-- =====================================================
-- Query 26 : Purple Cap Standings
-- Purpose : Displays leading wicket takers in IPL.
-- =====================================================

SELECT
    bowler,
    wickets,
    economy,
    bowling_average
FROM vw_bowling_stats
ORDER BY wickets DESC;



-- =====================================================
-- Query 27 : Best Economy Rate
-- Purpose : Bowlers with lowest economy
--            (minimum 1000 balls bowled).
-- =====================================================

SELECT
    bowler,
    economy
FROM vw_bowling_stats
WHERE legal_balls >= 1000
ORDER BY economy
LIMIT 10;



-- =====================================================
-- Query 28 : Best Bowling Average
-- Purpose : Lowest bowling average
--            (minimum 50 wickets).
-- =====================================================

SELECT
    bowler,
    bowling_average
FROM vw_bowling_stats
WHERE wickets >= 50
ORDER BY bowling_average
LIMIT 10;



-- =====================================================
-- Query 29 : Best Bowling Strike Rate
-- Purpose : Fewest balls required per wicket.
-- =====================================================

SELECT
    bowler,
    bowling_strike_rate
FROM vw_bowling_stats
WHERE wickets >= 50
ORDER BY bowling_strike_rate
LIMIT 10;



-- =====================================================
-- Query 30 : Most Dot Balls
-- Purpose : Bowlers generating maximum pressure.
-- =====================================================

SELECT
    bowler,
    dot_balls
FROM vw_bowling_stats
ORDER BY dot_balls DESC
LIMIT 10;



-- =====================================================
-- Query 31 : Highest Overs Bowled
-- Purpose : Bowlers with longest IPL careers.
-- =====================================================

SELECT
    bowler,
    overs
FROM vw_bowling_stats
ORDER BY legal_balls DESC
LIMIT 10;



-- =====================================================
-- Query 32 : Most Matches Bowled
-- Purpose : Bowlers with highest appearances.
-- =====================================================

SELECT
    bowler,
    matches
FROM vw_bowling_stats
ORDER BY matches DESC
LIMIT 10;



-- =====================================================
-- Query 33 : Best Bowling Figures
-- Purpose : Displays career best bowling figures.
-- =====================================================

SELECT
    bowler,
    best_bowling
FROM vw_bowling_stats
ORDER BY wickets DESC;



-- =====================================================
-- Query 34 : Lowest Boundary Concession
-- Purpose : Bowlers conceding boundaries least often.
-- =====================================================

SELECT
    bowler,
    balls_per_boundary
FROM vw_bowling_stats
WHERE legal_balls >= 1000
ORDER BY balls_per_boundary DESC
LIMIT 10;



-- =====================================================
-- Query 35 : Highest Dot Ball Percentage
-- Purpose : Bowlers creating maximum pressure.
-- =====================================================

SELECT
    bowler,
    dot_ball_percentage
FROM vw_bowling_stats
WHERE legal_balls >= 1000
ORDER BY dot_ball_percentage DESC
LIMIT 10;



-- =====================================================
-- Query 36 : Most Fours Conceded
-- Purpose : Bowlers conceding maximum fours.
-- =====================================================

SELECT
    bowler,
    fours_conceded
FROM vw_bowling_stats
ORDER BY fours_conceded DESC
LIMIT 10;



-- =====================================================
-- Query 37 : Most Sixes Conceded
-- Purpose : Bowlers conceding maximum sixes.
-- =====================================================

SELECT
    bowler,
    sixes_conceded
FROM vw_bowling_stats
ORDER BY sixes_conceded DESC
LIMIT 10;



-- =====================================================
-- Query 38 : Most Bowling Innings
-- Purpose : Bowlers with highest bowling innings.
-- =====================================================

SELECT
    bowler,
    innings
FROM vw_bowling_stats
ORDER BY innings DESC
LIMIT 10;



-- =====================================================
-- Query 39 : Complete Purple Cap Leaderboard
-- Purpose : Comprehensive bowling rankings.
-- =====================================================

SELECT
    bowler,
    wickets,
    economy,
    bowling_average,
    bowling_strike_rate
FROM vw_bowling_stats
ORDER BY wickets DESC;



-- =====================================================
-- Query 40 : Elite Bowlers
-- Purpose : Bowlers with 100+ wickets and economy below 8.
-- =====================================================

SELECT
    bowler,
    wickets,
    economy
FROM vw_bowling_stats
WHERE wickets >= 100
  AND economy < 8
ORDER BY wickets DESC;