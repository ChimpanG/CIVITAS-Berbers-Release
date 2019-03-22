--==========================================================================================================================
--
--            .
--            |\
--            | \
--            |  \
--            |   \
--            |    \          Berbers by CIVITAS
--            |     \
--            |      \
--            |       \       ____O
--            |        \     .' ./
--            |   _.,-~"\  .',/~'
--            <-~"   _.,-~" ~ |
--^"~-,._.,-~"^"~-,._\       /,._.,-~"^"~-,._.,-~"^"~-,._
--~"^"~-,._.,-~"^"~-,._.,-~"^"~-,._.,-~"^"~-,._.,-~"^"~-,._
--^"~-,._.,-~"^"~-,._.,-~"^"~-,._.,-~"^"~-,._.,-~"^"~-,._
--~-,._.,-~"^"~-,._.,-~"^"~-,._.,-~"^"~-,._.,-~"^"~-,._
--==========================================================================================================================
-- Berbers / Traits
--==========================================================================================================================
INSERT INTO Types
		(Type,												Kind)
VALUES	('UNIT_CVS_BERBER_UU',								'KIND_UNIT'),
		('IMPROVEMENT_CVS_BERBER_UI',						'KIND_IMPROVEMENT'),
		-- Civilization Traits
		('TRAIT_CIVILIZATION_CVS_TAMAZGHA',					'KIND_TRAIT'),
		('TRAIT_CIVILIZATION_UNIT_CVS_BERBER_UU',			'KIND_TRAIT'),
		('TRAIT_CIVILIZATION_IMPROVEMENT_CVS_BERBER_UI',	'KIND_TRAIT');
-----------------------------------------------			
-- CivilizationTraits			
-----------------------------------------------				
INSERT INTO CivilizationTraits
		(CivilizationType,									TraitType)
VALUES	('CIVILIZATION_CVS_BERBER',							'TRAIT_CIVILIZATION_CVS_TAMAZGHA'),
		('CIVILIZATION_CVS_BERBER',							'TRAIT_CIVILIZATION_UNIT_CVS_BERBER_UU'),
		('CIVILIZATION_CVS_BERBER',							'TRAIT_CIVILIZATION_IMPROVEMENT_CVS_BERBER_UI');
-----------------------------------------------			
-- Traits			
-----------------------------------------------				
INSERT INTO Traits				
		(TraitType,											Name,														Description)
VALUES	('TRAIT_CIVILIZATION_CVS_TAMAZGHA',					'LOC_TRAIT_CIVILIZATION_CVS_TAMAZGHA_NAME',					'LOC_TRAIT_CIVILIZATION_CVS_TAMAZGHA_DESCRIPTION'),
		('TRAIT_CIVILIZATION_UNIT_CVS_BERBER_UU',			'LOC_TRAIT_CIVILIZATION_UNIT_CVS_BERBER_UU_NAME',			'LOC_TRAIT_CIVILIZATION_UNIT_CVS_BERBER_UU_DESCRIPTION'),
		('TRAIT_CIVILIZATION_IMPROVEMENT_CVS_BERBER_UI',	'LOC_TRAIT_CIVILIZATION_IMPROVEMENT_CVS_BERBER_UI_NAME',	'LOC_TRAIT_CIVILIZATION_IMPROVEMENT_CVS_BERBER_UI_DESCRIPTION');
-----------------------------------------------		
-- TraitModifiers		
-----------------------------------------------			
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	-- Trade Route Bonuses
		('TRAIT_CIVILIZATION_CVS_TAMAZGHA',		'CVS_TAMAZGHA_TRADE_ROUTE_GOLD'),
		('TRAIT_CIVILIZATION_CVS_TAMAZGHA',		'CVS_TAMAZGHA_TRADE_ROUTE_PRODUCTION');

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
		-- Specialty District Oasis Adjacency
SELECT	'TRAIT_CIVILIZATION_CVS_TAMAZGHA',		'CVS_TAMAZGHA_'||DistrictType||'_OASIS_ADJACENCY'
FROM	District_TradeRouteYields
WHERE   YieldChangeAsInternationalDestination > 0
AND        DistrictType IN (SELECT DistrictType
							FROM    Districts
							WHERE    TraitType IS NULL
							);

-----------------------------------------------
-- Dynamic Modifiers
-----------------------------------------------
INSERT INTO Types
		(Type,										Kind)
VALUES	('DYNMOD_CVS_BERBER_TRADE_GOLD',			'KIND_MODIFIER'),
		('DYNMOD_CVS_BERBER_TRADE_PROD',			'KIND_MODIFIER');

INSERT INTO DynamicModifiers
		(ModifierType,								CollectionType,					EffectType)
VALUES	('DYNMOD_CVS_BERBER_TRADE_GOLD',			'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_CITY_YIELD_FROM_FOREIGN_TRADE_ROUTES_PASSING_THROUGH'),
		('DYNMOD_CVS_BERBER_TRADE_PROD',			'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_CITY_YIELD_FROM_FOREIGN_TRADE_ROUTES_PASSING_THROUGH');

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,								ModifierType,							SubjectRequirementSetId)
VALUES	-- Trade Route Bonuses
		('CVS_TAMAZGHA_TRADE_ROUTE_GOLD',			'DYNMOD_CVS_BERBER_TRADE_GOLD',			null),
		('CVS_TAMAZGHA_TRADE_ROUTE_PRODUCTION',		'DYNMOD_CVS_BERBER_TRADE_PROD',			null);

INSERT INTO Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId)
SELECT	-- Specialty District Oasis Adjacency
		'CVS_TAMAZGHA_'||DistrictType||'_OASIS_ADJACENCY',	'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY',		null
FROM	District_TradeRouteYields
WHERE   YieldChangeAsInternationalDestination > 0
AND        DistrictType IN (SELECT DistrictType
							FROM    Districts
							WHERE    TraitType IS NULL
							);
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,			Value)
VALUES	-- Trade Route Bonuses
		('CVS_TAMAZGHA_TRADE_ROUTE_GOLD',		'YieldType',	'YIELD_GOLD'),
		('CVS_TAMAZGHA_TRADE_ROUTE_GOLD',		'Amount',		3),
		('CVS_TAMAZGHA_TRADE_ROUTE_PRODUCTION',	'YieldType',	'YIELD_PRODUCTION'),
		('CVS_TAMAZGHA_TRADE_ROUTE_PRODUCTION',	'Amount',		2);

INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value)
SELECT	-- Specialty District Oasis Adjacency
		'CVS_TAMAZGHA_'||DistrictType||'_OASIS_ADJACENCY',	'DistrictType',		DistrictType
FROM	District_TradeRouteYields
WHERE   YieldChangeAsInternationalDestination > 0
AND        DistrictType IN (SELECT DistrictType
							FROM    Districts
							WHERE    TraitType IS NULL
							);

INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value)
SELECT	-- Specialty District Oasis Adjacency
		'CVS_TAMAZGHA_'||DistrictType||'_OASIS_ADJACENCY',	'FeatureType',		'FEATURE_OASIS'
FROM	District_TradeRouteYields
WHERE   YieldChangeAsInternationalDestination > 0
AND        DistrictType IN (SELECT DistrictType
							FROM    Districts
							WHERE    TraitType IS NULL
							);

INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value)
SELECT	-- Specialty District Oasis Adjacency
		'CVS_TAMAZGHA_'||DistrictType||'_OASIS_ADJACENCY',	'YieldType',		YieldType
FROM	District_TradeRouteYields
WHERE   YieldChangeAsInternationalDestination > 0
AND        DistrictType IN (SELECT DistrictType
							FROM    Districts
							WHERE    TraitType IS NULL
							);

INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value)
SELECT	-- Specialty District Oasis Adjacency
		'CVS_TAMAZGHA_'||DistrictType||'_OASIS_ADJACENCY',	'Amount',			2
FROM	District_TradeRouteYields
WHERE   YieldChangeAsInternationalDestination > 0
AND        DistrictType IN (SELECT DistrictType
							FROM    Districts
							WHERE    TraitType IS NULL
							);

INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value)
SELECT	-- Specialty District Oasis Adjacency
		'CVS_TAMAZGHA_'||DistrictType||'_OASIS_ADJACENCY',	'TilesRequires',	1
FROM	District_TradeRouteYields
WHERE   YieldChangeAsInternationalDestination > 0
AND        DistrictType IN (SELECT DistrictType
							FROM    Districts
							WHERE    TraitType IS NULL
							);

INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value)
SELECT	-- Specialty District Oasis Adjacency
		'CVS_TAMAZGHA_'||DistrictType||'_OASIS_ADJACENCY',	'Description',		'LOC_CVS_TAMAZGHA_'||DistrictType||'_OASIS_ADJACENCY'
FROM	District_TradeRouteYields
WHERE   YieldChangeAsInternationalDestination > 0
AND        DistrictType IN (SELECT DistrictType
							FROM    Districts
							WHERE    TraitType IS NULL
							);