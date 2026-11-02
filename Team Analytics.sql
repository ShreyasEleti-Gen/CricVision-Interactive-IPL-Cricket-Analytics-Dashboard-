-- =====================================================
-- SECTION E : TEAM ANALYTICS
-- =====================================================


-- =====================================================
-- Query 56 : Team Rankings by Wins
-- Purpose : Displays teams with the highest number
--           of victories.
-- =====================================================

SELECT
    team,
    wins
FROM vw_team_stats
ORDER BY wins DESC;



-- =====================================================
-- Query 57 : Team Win Percentage
-- Purpose : Displays win percentage of every team.
-- =====================================================

SELECT
    team,
    matches,
    wins,
    win_percentage
FROM vw_team_stats
ORDER BY win_percentage DESC;



-- =====================================================
-- Query 58 : Teams Winning Most Tosses
-- Purpose : Shows teams winning maximum tosses.
-- =====================================================

SELECT
    team,
    toss_wins
FROM vw_team_stats
ORDER BY toss_wins DESC;



-- =====================================================
-- Query 59 : Teams Batting First Most Often
-- Purpose : Teams choosing or ending up batting first.
-- =====================================================

SELECT
    team,
    batted_first
FROM vw_team_stats
ORDER BY batted_first DESC;



-- =====================================================
-- Query 60 : Teams Bowling First Most Often
-- Purpose : Teams choosing or ending up bowling first.
-- =====================================================

SELECT
    team,
    bowled_first
FROM vw_team_stats
ORDER BY bowled_first DESC;



-- =====================================================
-- Query 61 : Teams with Highest Wins
-- Purpose : Complete team leaderboard.
-- =====================================================

SELECT
    team,
    matches,
    wins,
    losses,
    win_percentage
FROM vw_team_stats
ORDER BY wins DESC;



-- =====================================================
-- Query 62 : Teams with Lowest Win Percentage
-- Purpose : Shows weakest teams in IPL history.
-- =====================================================

SELECT
    team,
    win_percentage
FROM vw_team_stats
ORDER BY win_percentage
LIMIT 10;



-- =====================================================
-- Query 63 : Teams Playing Most Matches
-- Purpose : Franchise longevity.
-- =====================================================

SELECT
    team,
    matches
FROM vw_team_stats
ORDER BY matches DESC;



-- =====================================================
-- Query 64 : Toss Win vs Match Win Analysis
-- Purpose : Compare toss wins with match wins.
-- =====================================================

SELECT
    team,
    toss_wins,
    wins,
    ROUND((wins * 100.0) / NULLIF(toss_wins,0),2) AS win_after_toss_percentage
FROM vw_team_stats
ORDER BY win_after_toss_percentage DESC;



-- =====================================================
-- Query 65 : Complete Team Dashboard
-- Purpose : Displays all team KPIs.
-- =====================================================

SELECT *
FROM vw_team_stats
ORDER BY wins DESC;