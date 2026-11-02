-- =====================================================
-- IPL ANALYTICS PROJECT
-- SECTION A : DATASET OVERVIEW
-- =====================================================


-- =====================================================
-- Query 1 : Dataset Summary
-- Purpose : Displays total matches, dataset timeline,
--           total seasons and total venues.
-- =====================================================

SELECT
    COUNT(*) AS total_matches,
    MIN(match_date) AS first_match,
    MAX(match_date) AS latest_match,
    COUNT(DISTINCT season) AS seasons,
    COUNT(DISTINCT venue) AS venues
FROM matches;



-- =====================================================
-- Query 2 : Matches Played Per Season
-- Purpose : Shows number of matches played in each IPL
--           season.
-- =====================================================

SELECT
    season,
    COUNT(*) AS matches
FROM matches
GROUP BY season
ORDER BY season;



-- =====================================================
-- Query 3 : Matches Hosted Per Venue
-- Purpose : Shows how many matches every stadium has
--           hosted.
-- =====================================================

SELECT
    venue,
    COUNT(*) AS matches_hosted
FROM matches
GROUP BY venue
ORDER BY matches_hosted DESC;



-- =====================================================
-- Query 4 : Top 10 Most Used Venues
-- Purpose : Displays venues hosting the highest number
--           of IPL matches.
-- =====================================================

SELECT
    venue,
    matches_hosted
FROM vw_venue_stats
ORDER BY matches_hosted DESC
LIMIT 10;



-- =====================================================
-- Query 5 : Total Players
-- Purpose : Shows total unique players available in
--           the analytics model.
-- =====================================================

SELECT
    COUNT(*) AS total_players
FROM vw_player_summary;



-- =====================================================
-- Query 6 : Teams Available in Dataset
-- Purpose : Lists every IPL team present in the data.
-- =====================================================

SELECT
    team
FROM vw_team_stats
ORDER BY team;



-- =====================================================
-- Query 7 : Seasons Hosted by Each Venue
-- Purpose : Shows how many IPL seasons every venue has
--           hosted.
-- =====================================================

SELECT
    venue,
    seasons_hosted
FROM vw_venue_stats
ORDER BY seasons_hosted DESC;



-- =====================================================
-- Query 8 : Latest Matches in Dataset
-- Purpose : Displays the latest matches available in
--           the dataset.
-- =====================================================

SELECT
    match_date,
    team1,
    team2,
    winner
FROM matches
ORDER BY match_date DESC
LIMIT 10;



-- =====================================================
-- Query 9 : Cities Hosting Maximum Matches
-- Purpose : Shows cities with the highest number of IPL
--           matches.
-- =====================================================

SELECT
    city,
    COUNT(*) AS matches
FROM matches
GROUP BY city
ORDER BY matches DESC;



-- =====================================================
-- Query 10 : Toss Decision Distribution
-- Purpose : Shows whether captains preferred batting
--           or fielding after winning the toss.
-- =====================================================

SELECT
    toss_decision,
    COUNT(*) AS frequency
FROM matches
GROUP BY toss_decision;