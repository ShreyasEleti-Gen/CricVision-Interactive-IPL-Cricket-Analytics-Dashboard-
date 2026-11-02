-- =====================================================
-- Procedure 1 : Get Player Profile
-- Purpose : Returns complete batting & bowling profile
-- =====================================================

DELIMITER $$

CREATE PROCEDURE GetPlayerProfile(IN p_player VARCHAR(100))

BEGIN

SELECT *

FROM vw_player_summary

WHERE player = p_player;

END $$

DELIMITER ;


CALL GetPlayerProfile('V Kohli');

CALL GetPlayerProfile('MS Dhoni');

CALL GetPlayerProfile('JJ Bumrah');


-- =====================================================
-- Procedure 2 : Team Performance
-- =====================================================

DELIMITER $$

CREATE PROCEDURE GetTeamPerformance(IN p_team VARCHAR(100))

BEGIN

SELECT *

FROM vw_team_stats

WHERE team = p_team;

END $$

DELIMITER ;

CALL GetTeamPerformance('Mumbai Indians');



-- =====================================================
-- Procedure 3 : Venue Report
-- =====================================================

DELIMITER $$

CREATE PROCEDURE GetVenueReport(IN p_venue VARCHAR(255))

BEGIN

SELECT *

FROM vw_venue_stats

WHERE venue = p_venue;

END $$

DELIMITER ;

CALL GetVenueReport('M Chinnaswamy Stadium');


-- =====================================================
-- Procedure 4 : Season Summary
-- =====================================================

DELIMITER $$

CREATE PROCEDURE GetSeasonSummary(IN p_season VARCHAR(20))

BEGIN

SELECT

season,

COUNT(*) matches,

SUM(total_runs) total_runs,

SUM(wicket) wickets

FROM matches m

JOIN deliveries d

ON m.match_id=d.match_id

WHERE season=p_season

GROUP BY season;

END $$

DELIMITER ;

CALL GetSeasonSummary('2023');



-- =====================================================
-- Procedure 5 : Head To Head
-- =====================================================

DELIMITER $$

CREATE PROCEDURE GetHeadToHead(

IN teamA VARCHAR(100),

IN teamB VARCHAR(100)

)

BEGIN

SELECT

winner,

COUNT(*) wins

FROM matches

WHERE

(team1=teamA AND team2=teamB)

OR

(team1=teamB AND team2=teamA)

GROUP BY winner

ORDER BY wins DESC;

END $$

DELIMITER ;

CALL GetHeadToHead('Chennai Super Kings','Mumbai Indians');