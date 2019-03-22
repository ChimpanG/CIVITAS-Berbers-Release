-- CVS_BerberCS_ModCompatibility
-- Author: thecrazyscotsman
-- DateCreated: 12/19/2017 2:55:08 PM
--------------------------------------------------------------
--=====
--YNAMP
--=====
CREATE TABLE IF NOT EXISTS StartPosition
    (    MapName TEXT NOT NULL,
        Civilization TEXT,
        Leader TEXT,
        DisabledByCivilization TEXT,
        DisabledByLeader TEXT,
        AlternateStart INT default 0,    
        X INT default 0,
        Y INT default 0);

INSERT INTO StartPosition (MapName, Civilization, X, Y)
	VALUES
		('GreatestEarth', 'CVS_CIVILIZATION_GARAMA', 49, 31),
		('GreatestEarth', 'CVS_CIVILIZATION_SALE', 40, 32),
		('GiantEarth', 'CVS_CIVILIZATION_GARAMA', 18, 45),
		('GiantEarth', 'CVS_CIVILIZATION_SALE', 6, 49);