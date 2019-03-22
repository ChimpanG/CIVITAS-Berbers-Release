--==========================================================================================================================
-- GEDEMON'S YNAEMP
--==========================================================================================================================

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,						Leader,											MapName,			X,		Y	)
VALUES	('CIVILIZATION_CVS_BERBER',			'LEADER_CVS_DIHYA',						'GiantEarth',		16,		51	),
		('CIVILIZATION_CVS_BERBER',			'LEADER_CVS_DIHYA',						'GreatestEarthMap',	46,		55	), 
		('CIVILIZATION_CVS_BERBER',			'LEADER_CVS_DIHYA',						'CordiformEarth',	34,		19	),
		('CIVILIZATION_CVS_BERBER',			'LEADER_CVS_DIHYA',						'LargeEurope',		32,		21	),
		('CIVILIZATION_CVS_BERBER',			'LEADER_CVS_DIHYA',						'PlayEuropeAgain',	34,		21	);