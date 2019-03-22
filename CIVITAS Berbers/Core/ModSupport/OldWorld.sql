-----------------------------------------------
-- 40sw4rm's "Old World"
-----------------------------------------------
CREATE TABLE IF NOT EXISTS TSL 
    (
    MapType TEXT DEFAULT NULL,
    Civ TEXT DEFAULT NULL,
    LeaderType TEXT DEFAULT NULL,
    X INTEGER DEFAULT NULL,
    Y INTEGER DEFAULT NULL
    );

INSERT INTO TSL(MapType,Civ,LeaderType,X,Y)
VALUES
('40sw4rmOW',	'CIVILIZATION_CVS_BERBER',		'LEADER_CVS_DIHYA',		18, 38);