/*
	UI
	Credits: SeelingCat
*/
-----------------------------------------------
-- Types
-----------------------------------------------	
INSERT INTO Types
		(Type,												Kind				)
VALUES	('MODTYPE_CVS_BERBERS_UI_ADJUST_HOUSING',			'KIND_MODIFIER'		);
		

-----------------------------------------------
-- Improvements
-----------------------------------------------

INSERT INTO Improvements	(
		ImprovementType,
		Name,		
		Description,
		TraitType,
		Icon,
		PrereqTech,
		Buildable,
		PlunderType,
		PlunderAmount,
		Housing,
		TilesRequired,
		SameAdjacentValid,
		BuildInLine,
		Domain		
		)
VALUES  (
		'IMPROVEMENT_CVS_BERBER_UI', -- ImprovementType
		'LOC_IMPROVEMENT_CVS_BERBER_UI_NAME', -- Name		
		'LOC_IMPROVEMENT_CVS_BERBER_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_IMPROVEMENT_CVS_BERBER_UI', -- TraitType
		'ICON_IMPROVEMENT_CVS_BERBER_UI', -- Icon
		'TECH_IRRIGATION', -- PrereqTech
		1, -- Buildable
		'PLUNDER_HEAL', -- PlunderType
		25, -- PlunderAmount
		1, -- Housing
		2, -- TilesRequired
		1, -- SameAdjacentValid
		1, -- BuildInLine
		'DOMAIN_LAND' -- Domain
		);

-----------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------
		
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,				UnitType		)
VALUES	('IMPROVEMENT_CVS_BERBER_UI',	'UNIT_BUILDER'	);

-----------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------
		
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,				TerrainType			)
VALUES	('IMPROVEMENT_CVS_BERBER_UI',	'TERRAIN_DESERT'	);

-----------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------
		
INSERT INTO Improvement_YieldChanges
		(ImprovementType,				YieldType,		YieldChange	)
VALUES	('IMPROVEMENT_CVS_BERBER_UI',	'YIELD_FOOD',	1			),
		('IMPROVEMENT_CVS_BERBER_UI',	'YIELD_GOLD',	0			),
		('IMPROVEMENT_CVS_BERBER_UI',	'YIELD_CULTURE',	0			);

-----------------------------------------------
-- Improvement_Adjacencies
-----------------------------------------------
		
INSERT INTO Improvement_Adjacencies
		(ImprovementType,				YieldChangeId								)
VALUES	('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBERS_UI_FOOD_UI'				),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBERS_UI_FOOD_MOUNTAIN_DESERT'	),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBERS_UI_FOOD_MOUNTAIN_GRASS'	),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBERS_UI_FOOD_MOUNTAIN_PLAINS'	),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBERS_UI_FOOD_MOUNTAIN_TUNDRA'	),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBERS_UI_FOOD_MOUNTAIN_SNOW'		),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBERS_UI_FOOD_HILLS_DESERT'		),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBERS_UI_FOOD_HILLS_GRASS'		),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBERS_UI_FOOD_HILLS_PLAINS'		),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBERS_UI_FOOD_HILLS_TUNDRA'		),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBERS_UI_FOOD_HILLS_SNOW'		);

-----------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------

INSERT INTO Adjacency_YieldChanges
		(ID,										Description,	YieldType,		YieldChange,	TilesRequired,	OtherDistrictAdjacent,	AdjacentSeaResource,	AdjacentTerrain,			AdjacentFeature,	AdjacentRiver,	AdjacentWonder,	AdjacentNaturalWonder,	AdjacentImprovement,			AdjacentDistrict,	PrereqCivic,	PrereqTech			)
VALUES	('ADJ_CVS_BERBERS_UI_FOOD_UI',				'Placeholder',	'YIELD_FOOD',	1,				2,				0,						0,						NULL,							NULL,				0,				0,				0,						'IMPROVEMENT_CVS_BERBER_UI',	NULL,				NULL,			'TECH_IRRIGATION'	),
		('ADJ_CVS_BERBERS_UI_FOOD_MOUNTAIN_DESERT',	'Placeholder',	'YIELD_FOOD',	1,				1,				0,						0,						'TERRAIN_DESERT_MOUNTAIN',	NULL,				0,				0,				0,						NULL,							NULL,				NULL,			'TECH_IRRIGATION'	),
		('ADJ_CVS_BERBERS_UI_FOOD_MOUNTAIN_GRASS',	'Placeholder',	'YIELD_FOOD',	1,				1,				0,						0,						'TERRAIN_GRASS_MOUNTAIN',	NULL,				0,				0,				0,						NULL,							NULL,				NULL,			'TECH_IRRIGATION'	),
		('ADJ_CVS_BERBERS_UI_FOOD_MOUNTAIN_PLAINS',	'Placeholder',	'YIELD_FOOD',	1,				1,				0,						0,						'TERRAIN_PLAINS_MOUNTAIN',	NULL,				0,				0,				0,						NULL,							NULL,				NULL,			'TECH_IRRIGATION'	),
		('ADJ_CVS_BERBERS_UI_FOOD_MOUNTAIN_TUNDRA',	'Placeholder',	'YIELD_FOOD',	1,				1,				0,						0,						'TERRAIN_TUNDRA_MOUNTAIN',	NULL,				0,				0,				0,						NULL,							NULL,				NULL,			'TECH_IRRIGATION'	),
		('ADJ_CVS_BERBERS_UI_FOOD_MOUNTAIN_SNOW',	'Placeholder',	'YIELD_FOOD',	1,				1,				0,						0,						'TERRAIN_SNOW_MOUNTAIN',	NULL,				0,				0,				0,						NULL,							NULL,				NULL,			'TECH_IRRIGATION'	),
		('ADJ_CVS_BERBERS_UI_FOOD_HILLS_DESERT',	'Placeholder',	'YIELD_FOOD',	1,				1,				0,						0,						'TERRAIN_DESERT_HILLS',		NULL,				0,				0,				0,						NULL,							NULL,				NULL,			'TECH_IRRIGATION'	),
		('ADJ_CVS_BERBERS_UI_FOOD_HILLS_GRASS',		'Placeholder',	'YIELD_FOOD',	1,				1,				0,						0,						'TERRAIN_GRASS_HILLS',		NULL,				0,				0,				0,						NULL,							NULL,				NULL,			'TECH_IRRIGATION'	),
		('ADJ_CVS_BERBERS_UI_FOOD_HILLS_PLAINS',	'Placeholder',	'YIELD_FOOD',	1,				1,				0,						0,						'TERRAIN_PLAINS_HILLS',		NULL,				0,				0,				0,						NULL,							NULL,				NULL,			'TECH_IRRIGATION'	),
		('ADJ_CVS_BERBERS_UI_FOOD_HILLS_TUNDRA',	'Placeholder',	'YIELD_FOOD',	1,				1,				0,						0,						'TERRAIN_TUNDRA_HILLS',		NULL,				0,				0,				0,						NULL,							NULL,				NULL,			'TECH_IRRIGATION'	),
		('ADJ_CVS_BERBERS_UI_FOOD_HILLS_SNOW',		'Placeholder',	'YIELD_FOOD',	1,				1,				0,						0,						'TERRAIN_SNOW_HILLS',		NULL,				0,				0,				0,						NULL,							NULL,				NULL,			'TECH_IRRIGATION'	);
-----------------------------------------------
-- Improvement_BonusYieldChanges
-----------------------------------------------
		
INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,				YieldType,			BonusYieldChange,	PrereqCivic					)
VALUES	(405,	'IMPROVEMENT_CVS_BERBER_UI',	'YIELD_GOLD',		2,					'CIVIC_MEDIEVAL_FAIRES'		),
		(406,	'IMPROVEMENT_CVS_BERBER_UI',	'YIELD_CULTURE',	1,					'CIVIC_CULTURAL_HERITAGE'	);

-----------------------------------------------
-- TraitModifiers
-- Civ Bonus: Plus 2 Housing in cities that have at least 3 Foggara; Flat tiles adjacent to any number of Foggara get +1 food
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,							ModifierId									)
VALUES	('TRAIT_CIVILIZATION_CVS_TAMAZGHA',	'MODIFIER_CVS_BERBERS_UI_FLAT_FOOD_ADJACENCY'	);
	
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,									SubjectRequirementSetId							)
VALUES	('MODIFIER_CVS_BERBERS_UI_FLAT_FOOD_ADJACENCY',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'REQSET_CVS_BERBERS_PLOT_IS_FLAT_NEXT_TO_FOGGARA'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
VALUES	('MODIFIER_CVS_BERBERS_UI_FLAT_FOOD_ADJACENCY',			'YieldType',	'YIELD_FOOD'		),
		('MODIFIER_CVS_BERBERS_UI_FLAT_FOOD_ADJACENCY',			'Amount',		1		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType			)
VALUES	('REQSET_CVS_BERBERS_PLOT_IS_FLAT_NEXT_TO_FOGGARA',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_BERBERS_PLOT_IS_FLAT_LAND',					'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CVS_BERBERS_PLOT_IS_ADJACENT_TO_FOGGARA',			'REQUIREMENTSET_TEST_ALL'	);


-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements	
		(RequirementSetId,											RequirementId				)
VALUES	('REQSET_CVS_BERBERS_PLOT_IS_FLAT_NEXT_TO_FOGGARA',			'REQ_CVS_BERBERS_PLOT_IS_FLAT_LAND_SET'					),
		('REQSET_CVS_BERBERS_PLOT_IS_FLAT_NEXT_TO_FOGGARA',			'REQ_CVS_BERBERS_PLOT_IS_ADJACENT_TO_FOGGARA_SET'		),
		('REQSET_CVS_BERBERS_PLOT_IS_FLAT_NEXT_TO_FOGGARA',			'REQ_CVS_BERBERS_PLOT_NOT_HAS_FOGGARA'					),
		('REQSET_CVS_BERBERS_PLOT_IS_FLAT_LAND',					'REQ_CVS_BERBERS_PLOT_IS_GRASS'							),
		('REQSET_CVS_BERBERS_PLOT_IS_FLAT_LAND',					'REQ_CVS_BERBERS_PLOT_IS_PLAINS'						),
		('REQSET_CVS_BERBERS_PLOT_IS_FLAT_LAND',					'REQ_CVS_BERBERS_PLOT_IS_DESERT'						),
		('REQSET_CVS_BERBERS_PLOT_IS_FLAT_LAND',					'REQ_CVS_BERBERS_PLOT_IS_TUNDRA'						),
		('REQSET_CVS_BERBERS_PLOT_IS_FLAT_LAND',					'REQ_CVS_BERBERS_PLOT_IS_SNOW'							),
		('REQSET_CVS_BERBERS_PLOT_IS_ADJACENT_TO_FOGGARA',			'REQ_CVS_BERBERS_PLOT_IS_ADJACENT_TO_FOGGARA'			);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,												RequirementType,								Inverse	)
VALUES	('REQ_CVS_BERBERS_PLOT_IS_FLAT_LAND_SET',					'REQUIREMENT_REQUIREMENTSET_IS_MET'	,			0		),	
		('REQ_CVS_BERBERS_PLOT_IS_ADJACENT_TO_FOGGARA_SET',			'REQUIREMENT_REQUIREMENTSET_IS_MET'	,			0		),
		('REQ_CVS_BERBERS_PLOT_NOT_HAS_FOGGARA',					'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES',	1		),
		('REQ_CVS_BERBERS_PLOT_IS_GRASS',							'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',		0		),
		('REQ_CVS_BERBERS_PLOT_IS_PLAINS',							'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',		0		),
		('REQ_CVS_BERBERS_PLOT_IS_DESERT',							'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',		0		),
		('REQ_CVS_BERBERS_PLOT_IS_TUNDRA',							'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',		0		),
		('REQ_CVS_BERBERS_PLOT_IS_SNOW',							'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',		0		),
		('REQ_CVS_BERBERS_PLOT_IS_ADJACENT_TO_FOGGARA',				'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES',		0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,												Name,				Value					)
VALUES	('REQ_CVS_BERBERS_PLOT_IS_ADJACENT_TO_FOGGARA',				'ImprovementType',	'IMPROVEMENT_CVS_BERBER_UI'	),

		('REQ_CVS_BERBERS_PLOT_IS_FLAT_LAND_SET',					'RequirementSetId',	'REQSET_CVS_BERBERS_PLOT_IS_FLAT_LAND'	),
		('REQ_CVS_BERBERS_PLOT_IS_ADJACENT_TO_FOGGARA_SET',			'RequirementSetId',	'REQSET_CVS_BERBERS_PLOT_IS_ADJACENT_TO_FOGGARA'	),
		('REQ_CVS_BERBERS_PLOT_NOT_HAS_FOGGARA',					'ImprovementType',	'IMPROVEMENT_CVS_BERBER_UI'	),
		('REQ_CVS_BERBERS_PLOT_IS_GRASS',							'TerrainType',		'TERRAIN_GRASS'			),
		('REQ_CVS_BERBERS_PLOT_IS_PLAINS',							'TerrainType',		'TERRAIN_PLAINS'		),
		('REQ_CVS_BERBERS_PLOT_IS_DESERT',							'TerrainType',		'TERRAIN_DESERT'		),
		('REQ_CVS_BERBERS_PLOT_IS_TUNDRA',							'TerrainType',		'TERRAIN_TUNDRA'		),
		('REQ_CVS_BERBERS_PLOT_IS_SNOW',							'TerrainType',		'TERRAIN_SNOW'			);