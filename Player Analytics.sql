-- =====================================================
-- SECTION D : PLAYER ANALYTICS
-- =====================================================


-- =====================================================
-- Query 41 : Best All-Rounders
-- Purpose : Players contributing significantly in both
--            batting and bowling.
-- =====================================================

SELECT
    player,
    runs,
    wickets,
    batting_average,
    bowling_average
FROM vw_player_summary
WHERE player_role = 'All-rounder'
ORDER BY runs DESC, wickets DESC;



-- =====================================================
-- Query 42 : Player Role Distribution
-- Purpose : Number of players in each role.
-- =====================================================

SELECT
    player_role,
    COUNT(*) AS total_players
FROM vw_player_summary
GROUP BY player_role
ORDER BY total_players DESC;



-- =====================================================
-- Query 43 : Top Run Scorers with Wickets
-- Purpose : Batters contributing with the ball.
-- =====================================================

SELECT
    player,
    runs,
    wickets
FROM vw_player_summary
ORDER BY runs DESC
LIMIT 20;



-- =====================================================
-- Query 44 : Top Wicket Takers with Runs
-- Purpose : Bowlers contributing with the bat.
-- =====================================================

SELECT
    player,
    wickets,
    runs
FROM vw_player_summary
ORDER BY wickets DESC
LIMIT 20;



-- =====================================================
-- Query 45 : Players with 5000+ Runs
-- Purpose : Elite batters.
-- =====================================================

SELECT
    player,
    runs,
    batting_average,
    batting_strike_rate
FROM vw_player_summary
WHERE runs >= 5000
ORDER BY runs DESC;



-- =====================================================
-- Query 46 : Players with 100+ Wickets
-- Purpose : Elite bowlers.
-- =====================================================

SELECT
    player,
    wickets,
    economy,
    bowling_average
FROM vw_player_summary
WHERE wickets >= 100
ORDER BY wickets DESC;



-- =====================================================
-- Query 47 : Power Hitters
-- Purpose : Players with highest batting strike rate
--            (minimum 1000 runs).
-- =====================================================

SELECT
    player,
    runs,
    batting_strike_rate
FROM vw_player_summary
WHERE runs >= 1000
ORDER BY batting_strike_rate DESC
LIMIT 15;



-- =====================================================
-- Query 48 : Consistent Batters
-- Purpose : Highest batting averages
--            (minimum 2000 runs).
-- =====================================================

SELECT
    player,
    runs,
    batting_average
FROM vw_player_summary
WHERE runs >= 2000
ORDER BY batting_average DESC
LIMIT 15;



-- =====================================================
-- Query 49 : Economy Specialists
-- Purpose : Bowlers with best economy
--            (minimum 100 wickets).
-- =====================================================

SELECT
    player,
    wickets,
    economy
FROM vw_player_summary
WHERE wickets >= 100
ORDER BY economy
LIMIT 15;



-- =====================================================
-- Query 50 : Most Valuable Players
-- Purpose : Players excelling in both batting and bowling.
-- =====================================================

SELECT
    player,
    runs,
    wickets,
    player_role
FROM vw_player_summary
ORDER BY
    (runs * 0.1 + wickets * 20) DESC
LIMIT 20;



-- =====================================================
-- Query 51 : Players with Highest Boundary Percentage
-- Purpose : Most aggressive batters.
-- =====================================================

SELECT
    player,
    boundary_percentage
FROM vw_player_summary
WHERE runs >= 1000
ORDER BY boundary_percentage DESC
LIMIT 15;



-- =====================================================
-- Query 52 : Players with Lowest Batting Dot Ball Percentage
-- Purpose : Batters rotating strike effectively.
-- =====================================================

SELECT
    player,
    batting_dot_ball_percentage
FROM vw_player_summary
WHERE runs >= 1000
ORDER BY batting_dot_ball_percentage
LIMIT 15;



-- =====================================================
-- Query 53 : Bowling Pressure Specialists
-- Purpose : Highest bowling dot-ball percentage.
-- =====================================================

SELECT
    player,
    bowling_dot_ball_percentage
FROM vw_player_summary
WHERE wickets >= 50
ORDER BY bowling_dot_ball_percentage DESC
LIMIT 15;



-- =====================================================
-- Query 54 : Complete Player Profile
-- Purpose : Displays complete player statistics.
-- =====================================================

SELECT *
FROM vw_player_summary
ORDER BY runs DESC
LIMIT 25;



-- =====================================================
-- Query 55 : Top 20 Overall Players
-- Purpose : Combined batting and bowling performance.
-- =====================================================

SELECT
    player,
    player_role,
    runs,
    wickets,
    batting_average,
    economy
FROM vw_player_summary
ORDER BY
    runs DESC,
    wickets DESC
LIMIT 20;