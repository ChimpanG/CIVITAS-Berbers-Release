/*
	Civilization
	Authors: SeelingCat
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind				)
VALUES	('CIVILIZATION_CVS_BERBER',	'KIND_CIVILIZATION'	);
		
-----------------------------------------------
-- Civilizations
-----------------------------------------------

INSERT INTO	Civilizations
		(CivilizationType,			Name,								Description,								Adjective,									StartingCivilizationLevelType,	RandomCityNameDepth,	Ethnicity			)
VALUES	('CIVILIZATION_CVS_BERBER',	'LOC_CIVILIZATION_CVS_BERBER_NAME',	'LOC_CIVILIZATION_CVS_BERBER_DESCRIPTION',	'LOC_CIVILIZATION_CVS_BERBER_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	10,						'ETHNICITY_MEDIT' 	);

-----------------------------------------------
-- NamedMountains
-----------------------------------------------

REPLACE INTO NamedMountains
		(NamedMountainType,			Name							)
VALUES	('NAMED_MOUNTAIN_RIF',		'LOC_NAMED_MOUNTAIN_RIF'		),
		('NAMED_MOUNTAIN_AURES',	'LOC_NAMED_MOUNTAIN_AURES'		),
		('NAMED_MOUNTAIN_HIGH_ATLAS',	'LOC_NAMED_MOUNTAIN_HIGH_ATLAS'		),
		('NAMED_MOUNTAIN_LESSER_ATLAS',	'LOC_NAMED_MOUNTAIN_LESSER_ATLAS'	);

-----------------------------------------------
-- NamedMountainCivilizations
-----------------------------------------------

INSERT INTO NamedMountainCivilizations
		(CivilizationType,			NamedMountainType				)
VALUES	('CIVILIZATION_CVS_BERBER',	'NAMED_MOUNTAIN_ATLAS'			),
		('CIVILIZATION_CVS_BERBER',	'NAMED_MOUNTAIN_HOGGAR'			),
		('CIVILIZATION_CVS_BERBER',	'NAMED_MOUNTAIN_RIF'			),
		('CIVILIZATION_CVS_BERBER',	'NAMED_MOUNTAIN_AURES'			),
		('CIVILIZATION_CVS_BERBER',	'NAMED_MOUNTAIN_HIGH_ATLAS'		),
		('CIVILIZATION_CVS_BERBER',	'NAMED_MOUNTAIN_LESSER_ATLAS'	);

-----------------------------------------------
-- NamedRivers
-----------------------------------------------

REPLACE INTO NamedRivers
		(NamedRiverType,			Name						)
VALUES	('NAMED_RIVER_OUED_SAOURA',	'LOC_NAMED_RIVER_OUED_SAOURA'		),
		('NAMED_RIVER_DJEDI',		'LOC_NAMED_RIVER_DJEDI'		),
		('NAMED_RIVER_CHELIF',		'LOC_NAMED_RIVER_CHELIF'		),
		('NAMED_RIVER_BOU_REGREG',	'LOC_NAMED_RIVER_BOU_REGREG'		),
		('NAMED_RIVER_SOUS',		'LOC_NAMED_RIVER_SOUS'	),
		('NAMED_RIVER_DRAA',		'LOC_NAMED_RIVER_DRAA'		);

-----------------------------------------------
-- NamedRiverCivilizations
-----------------------------------------------

INSERT INTO NamedRiverCivilizations
		(CivilizationType,			NamedRiverType			)
VALUES	('CIVILIZATION_CVS_BERBER',	'NAMED_RIVER_OUED_SAOURA'	),
		('CIVILIZATION_CVS_BERBER',	'NAMED_RIVER_DJEDI'		),
		('CIVILIZATION_CVS_BERBER',	'NAMED_RIVER_CHELIF'		),
		('CIVILIZATION_CVS_BERBER',	'NAMED_RIVER_BOU_REGREG'		),
		('CIVILIZATION_CVS_BERBER',	'NAMED_RIVER_SOUS'		),
		('CIVILIZATION_CVS_BERBER',	'NAMED_RIVER_DRAA'	),
		('CIVILIZATION_CVS_BERBER',	'NAMED_RIVER_MEDJERDA_RIVER'		);

-----------------------------------------------
-- NamedDeserts
-----------------------------------------------

REPLACE INTO NamedDeserts
		(NamedDesertType,				Name						)
VALUES	('NAMED_DESERT_TENERE',			'LOC_NAMED_DESERT_TENERE'	),
		('NAMED_DESERT_GRAND_ERG_OCC',	'LOC_NAMED_DESERT_GRAND_ERG_OCC'	),
		('NAMED_DESERT_GRAND_ERG_ORI',	'LOC_NAMED_DESERT_GRAND_ERG_ORI'	);

-----------------------------------------------
-- NamedDesertCivilizations
-----------------------------------------------

INSERT INTO NamedDesertCivilizations
		(CivilizationType,			NamedDesertType			)
VALUES	('CIVILIZATION_CVS_BERBER',	'NAMED_DESERT_SAHARA'	),
		('CIVILIZATION_CVS_BERBER',	'NAMED_DESERT_GREAT_SAND_SEA'	),
		('CIVILIZATION_CVS_BERBER',	'NAMED_DESERT_TANEZROUFT_BASIN'	),
		('CIVILIZATION_CVS_BERBER',	'NAMED_DESERT_LIBYAN'	),
		('CIVILIZATION_CVS_BERBER',	'NAMED_DESERT_TENERE'	),
		('CIVILIZATION_CVS_BERBER',	'NAMED_DESERT_GRAND_ERG_OCC'	),
		('CIVILIZATION_CVS_BERBER',	'NAMED_DESERT_GRAND_ERG_ORI'	);

-----------------------------------------------
-- NamedVolcanoes
-----------------------------------------------

REPLACE INTO NamedVolcanoes
		(NamedVolcanoType,			Name							)
VALUES	('NAMED_VOLCANO_ATAKOR',	'LOC_NAMED_VOLCANO_ATAKOR'	),
		('NAMED_VOLCANO_HARUJ',		'LOC_NAMED_VOLCANO_HARUJ'	);

-----------------------------------------------
-- NamedVolcanoCivilizations
-----------------------------------------------

INSERT INTO NamedVolcanoCivilizations
		(CivilizationType,			NamedVolcanoType			)
VALUES	('CIVILIZATION_CVS_BERBER',	'NAMED_VOLCANO_ATAKOR'	),
		('CIVILIZATION_CVS_BERBER',	'NAMED_VOLCANO_HARUJ'	);

-----------------------------------------------
-- CityNames
-----------------------------------------------

INSERT INTO	CityNames
		(CivilizationType,			CityName	)
VALUES	('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TLEMCEN'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_FEZ'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TOUGGOURT'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_GHARDAIA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_CIRTA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_BEJAIA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TETOUAN'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_ANNABA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_BISKRA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_GERMA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_CHERCHELL'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_OUARZAZATE'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_GHADAMES'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_SETIF'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_MISURATA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_SALE'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TAMANRASSET'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_LAGHOUAT'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_AGADEZ'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_ESSOUK'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_AGADIR'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TINMEL'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_BATNA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TEBESSA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_DJERBA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_KHENCHELA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TAGHZUT'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_MARRAKESH'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_ALGIERS'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TUNIS'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TRIPOLI_OF_THE_WEST'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TIZI_OUZOU'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_KAIROUAN'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_OUARGLA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_ORAN'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_SIJILMASA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_BLIDA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_AIT_BENHADDOU'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TATAOUINE'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_ZUWARAH'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TENES'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_MEDEA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_GHAT'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TIARET'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_UBARI'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_MEKNES'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TIMGAD'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_GAFSA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_LARACHE'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_ABALESSA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_OUJDA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_ALTAVA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_MOGADOR'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_FIGUIG'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_MASCARA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_DJANET'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TOZEUR'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_JIJEL'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_ARAOUANE'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_THAGASTE'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TAMENTIT'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_CEUTA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_MELILLA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TANGIER'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_CASABLANCA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_TAGHAZA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_AUZIA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_DOUIRET'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_CHENINI'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_SAFI'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_LAMBAESIS'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_SIGA'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_THELEPTE'),
		('CIVILIZATION_CVS_BERBER', 'LOC_CITY_NAME_RAS_KEBDANA');
		
-----------------------------------------------
-- CivilizationCitizenNames
-----------------------------------------------

INSERT INTO	CivilizationCitizenNames
		(CivilizationType,			CitizenName,						Female	)
VALUES	('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_MALE_1',	0 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_MALE_2',	0 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_MALE_3',	0 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_MALE_4',	0 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_MALE_5',	0 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_MALE_6',	0 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_MALE_7',	0 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_MALE_8',	0 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_MALE_9',	0 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_MALE_10',	0 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_FEMALE_1',	1 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_FEMALE_2',	1 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_FEMALE_3',	1 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_FEMALE_4',	1 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_FEMALE_5',	1 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_FEMALE_6',	1 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_FEMALE_7',	1 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_FEMALE_8',	1 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_FEMALE_9',	1 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_FEMALE_10',	1 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_FEMALE_11',	1 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_FEMALE_12',	1 		),
		('CIVILIZATION_CVS_BERBER',	'LOC_CITIZEN_CVS_BERBER_FEMALE_13',	1 		);

-----------------------------------------------
-- CivilizationInfo
-----------------------------------------------

INSERT INTO	CivilizationInfo
		(CivilizationType,			Header,						Caption,								SortIndex	)
VALUES	('CIVILIZATION_CVS_BERBER',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_CVS_BERBER_LOCATION',		10			),
		('CIVILIZATION_CVS_BERBER',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_CVS_BERBER_SIZE',			20			),
		('CIVILIZATION_CVS_BERBER',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_CVS_BERBER_POPULATION',	30			),
		('CIVILIZATION_CVS_BERBER',	'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_CVS_BERBER_CAPITAL',		40			);
		
-----------------------------------------------
-- Start Bias
-----------------------------------------------

INSERT INTO	StartBiasTerrains
		(CivilizationType,			TerrainType,				Tier	)
VALUES	('CIVILIZATION_CVS_BERBER',	'TERRAIN_DESERT',			1		),
		('CIVILIZATION_CVS_BERBER',	'TERRAIN_DESERT_MOUNTAIN',	3		),
		('CIVILIZATION_CVS_BERBER',	'TERRAIN_DESERT_HILLS',		1		);

INSERT INTO	StartBiasFeatures
		(CivilizationType,			FeatureType,			Tier	)
VALUES	('CIVILIZATION_CVS_BERBER',	'FEATURE_OASIS',		1		),
		('CIVILIZATION_CVS_BERBER',	'FEATURE_FLOODPLAINS',	3		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_CVS_PLAYER_IS_BERBER',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_LEADER_IS_BERBER',	'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,				RequirementId				)
VALUES	('REQSET_CVS_PLAYER_IS_BERBER',	'REQ_CVS_PLAYER_IS_BERBER'	);


-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType						)
VALUES	('REQ_CVS_PLAYER_IS_BERBER',	'REQUIREMENT_REQUIREMENTSET_IS_MET'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,				Value							)
VALUES	('REQ_CVS_PLAYER_IS_BERBER',	'RequirementSetId', 'REQSET_CVS_LEADER_IS_BERBER'	);

/*
-----------------------------------------------
-- Support for Alternative Leaders
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,				RequirementId					)
VALUES	('REQSET_CVS_LEADER_IS_BERBER',	'REQ_CVS_LEADER_IS_LEADERNAME'	);

INSERT INTO Requirements
		(RequirementId,						RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_LEADERNAME',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value					)
VALUES	('REQ_CVS_LEADER_IS_LEADERNAME',	'LeaderType',	'LEADER_CVS_LEADERNAME'	);

*/