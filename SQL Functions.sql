-- =====================================================
-- Function 1 : Get Player Role
-- Purpose : Classifies player based on performance
-- =====================================================

DELIMITER $$

CREATE FUNCTION GetPlayerRole(
    total_runs INT,
    total_wickets INT
)

RETURNS VARCHAR(50)

DETERMINISTIC

BEGIN

DECLARE role_name VARCHAR(50);


IF total_runs >= 500
AND total_wickets >= 20 THEN

    SET role_name = 'All-rounder';


ELSEIF total_runs >= 500 THEN

    SET role_name = 'Batter';


ELSEIF total_wickets >= 20 THEN

    SET role_name = 'Bowler';


ELSE

    SET role_name = 'Utility Player';


END IF;


RETURN role_name;


END $$

DELIMITER ;

SELECT
GetPlayerRole(700,25);



-- =====================================================
-- Function 2 : Batting Grade
-- =====================================================


DELIMITER $$

CREATE FUNCTION GetBattingGrade(
    runs INT,
    strike_rate DECIMAL(10,2)
)

RETURNS VARCHAR(20)

DETERMINISTIC

BEGIN

DECLARE grade VARCHAR(20);


IF runs >= 2000
AND strike_rate >= 140 THEN

SET grade='Elite';


ELSEIF strike_rate >=120 THEN

SET grade='Good';


ELSEIF strike_rate >=100 THEN

SET grade='Average';


ELSE

SET grade='Low';


END IF;


RETURN grade;


END $$

DELIMITER ;

SELECT
GetBattingGrade(5000,145);



-- =====================================================
-- Function 3 : Bowling Performance Grade
-- =====================================================


DELIMITER $$

CREATE FUNCTION GetBowlingGrade(
    wickets INT,
    economy DECIMAL(10,2)
)

RETURNS VARCHAR(20)

DETERMINISTIC

BEGIN

DECLARE grade VARCHAR(20);


IF wickets >=100
AND economy <8 THEN

SET grade='Elite';


ELSEIF economy <9 THEN

SET grade='Good';


ELSE

SET grade='Average';


END IF;


RETURN grade;


END $$

DELIMITER ;

SELECT
GetBowlingGrade(150,7.5);


-- =====================================================
-- Function 4 : Player Experience Level
-- =====================================================


DELIMITER $$

CREATE FUNCTION GetExperienceLevel(
    matches INT
)

RETURNS VARCHAR(30)

DETERMINISTIC

BEGIN

DECLARE level_name VARCHAR(30);


IF matches >=150 THEN

SET level_name='Veteran';


ELSEIF matches >=75 THEN

SET level_name='Experienced';


ELSE

SET level_name='Emerging';


END IF;


RETURN level_name;


END $$

DELIMITER ;

SELECT
GetExperienceLevel(180);



-- =====================================================
-- Function 5 : Player Impact Score
-- =====================================================


DELIMITER $$

CREATE FUNCTION GetImpactScore(
    runs INT,
    wickets INT,
    matches INT
)

RETURNS DECIMAL(10,2)

DETERMINISTIC

BEGIN

DECLARE score DECIMAL(10,2);


SET score =
(runs * 0.1)
+
(wickets * 20)
+
(matches * 2);


RETURN score;


END $$

DELIMITER ;

SELECT
GetImpactScore(7000,50,250);


SELECT

player,

runs,

wickets,

GetPlayerRole(runs,wickets) AS role,

GetImpactScore(
runs,
wickets,
batting_matches
) AS impact_score

FROM vw_player_summary

ORDER BY impact_score DESC;