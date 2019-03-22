-- CVS_BerberCS_Garama
-- Author: thecrazyscotsman
-- DateCreated: 12/18/2017 6:01:39 PM
--------------------------------------------------------------
--=====
--TYPES
--=====
INSERT INTO Types (Type, Kind)
	VALUES
		('CVS_CIVILIZATION_GARAMA', 'KIND_CIVILIZATION'),
		('CVS_LEADER_MINOR_CIV_GARAMA', 'KIND_LEADER'),
		('CVS_MINOR_CIV_GARAMA_TRAIT', 'KIND_TRAIT');

--===============
--TYPE PROPERTIES
--===============
INSERT INTO TypeProperties (Type, Name, Value)
	VALUES
		('CVS_CIVILIZATION_GARAMA', 'CityStateCategory', 'TRADE');

--=============
--CIVILIZATIONS
--=============
INSERT INTO Civilizations (CivilizationType, Name, Description, Adjective, StartingCivilizationLevelType, RandomCityNameDepth, Ethnicity)
	VALUES
		('CVS_CIVILIZATION_GARAMA', 'LOC_CVS_CIVILIZATION_GARAMA_NAME', 'LOC_CVS_CIVILIZATION_GARAMA_DESCRIPTION', 'LOC_CVS_CIVILIZATION_GARAMA_ADJECTIVE', 'CIVILIZATION_LEVEL_CITY_STATE', 1, 'ETHNICITY_MEDIT'); 

--=======
--LEADERS
--=======
INSERT INTO CivilizationLeaders (CivilizationType, LeaderType, CapitalName)
	VALUES
		('CVS_CIVILIZATION_GARAMA', 'CVS_LEADER_MINOR_CIV_GARAMA', 'LOC_CVS_CITY_NAME_GARAMA');

INSERT INTO Leaders (LeaderType, Name, InheritFrom)
	VALUES
		('CVS_LEADER_MINOR_CIV_GARAMA', 'LOC_CVS_CIVILIZATION_GARAMA_NAME', 'LEADER_MINOR_CIV_TRADE');

--======
--TRAITS
--======
INSERT INTO LeaderTraits (LeaderType, TraitType)
	VALUES
		('CVS_LEADER_MINOR_CIV_GARAMA', 'CVS_MINOR_CIV_GARAMA_TRAIT');

INSERT INTO Traits (TraitType, Name, Description)
	VALUES
		('CVS_MINOR_CIV_GARAMA_TRAIT', 'LOC_CVS_LEADER_TRAIT_GARAMA_NAME', 'LOC_CVS_LEADER_TRAIT_GARAMA_DESCRIPTION');

INSERT INTO TraitModifiers (TraitType, ModifierId)
	VALUES
		('CVS_MINOR_CIV_GARAMA_TRAIT', 'CVS_MINOR_CIV_GARAMA_UNIQUE_INFLUENCE_BONUS_1'),
		('CVS_MINOR_CIV_GARAMA_TRAIT', 'CVS_MINOR_CIV_GARAMA_UNIQUE_INFLUENCE_BONUS_2');

--=========
--MODIFIERS
--=========
INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)	
	VALUES
		('CVS_MINOR_CIV_GARAMA_UNIQUE_INFLUENCE_BONUS_1', 'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', NULL, 'PLAYER_IS_SUZERAIN'),
		('CVS_MINOR_CIV_GARAMA_UNIQUE_INFLUENCE_BONUS_2', 'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', NULL, 'PLAYER_IS_SUZERAIN'),
		('CVS_MINOR_CIV_GARAMA_BONUS_OASIS_FOOD_1', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', NULL, 'CVS_BERBER_REQUIREMENTSET_PLOT_WITHIN_ONE_OASIS'),
		('CVS_MINOR_CIV_GARAMA_BONUS_OASIS_FOOD_2', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', NULL, 'CVS_BERBER_REQUIREMENTSET_PLOT_WITHIN_TWO_OASIS');

INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES
		('CVS_MINOR_CIV_GARAMA_UNIQUE_INFLUENCE_BONUS_1', 'ModifierId', 'CVS_MINOR_CIV_GARAMA_BONUS_OASIS_FOOD_1'),
		('CVS_MINOR_CIV_GARAMA_UNIQUE_INFLUENCE_BONUS_2', 'ModifierId', 'CVS_MINOR_CIV_GARAMA_BONUS_OASIS_FOOD_2'),
		('CVS_MINOR_CIV_GARAMA_BONUS_OASIS_FOOD_1', 'YieldType', 'YIELD_FOOD'),
		('CVS_MINOR_CIV_GARAMA_BONUS_OASIS_FOOD_1', 'Amount', 1),
		('CVS_MINOR_CIV_GARAMA_BONUS_OASIS_FOOD_2', 'YieldType', 'YIELD_FOOD'),
		('CVS_MINOR_CIV_GARAMA_BONUS_OASIS_FOOD_2', 'Amount', 1);

--=============
--REQUIREMENTS
--=============
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
	VALUES
		('CVS_BERBER_REQUIREMENTSET_PLOT_WITHIN_ONE_OASIS', 'REQUIREMENTSET_TEST_ALL'),
		('CVS_BERBER_REQUIREMENTSET_PLOT_WITHIN_TWO_OASIS', 'REQUIREMENTSET_TEST_ALL'),
		('CVS_BERBER_REQUIREMENTSET_TERRAIN_IS_LAND', 'REQUIREMENTSET_TEST_ANY');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
	VALUES
		('CVS_BERBER_REQUIREMENTSET_PLOT_WITHIN_ONE_OASIS', 'CVS_BERBER_REQUIRES_PLOT_WITHIN_ONE_OASIS'),
		('CVS_BERBER_REQUIREMENTSET_PLOT_WITHIN_ONE_OASIS', 'CVS_BERBER_REQUIRES_TERRAIN_IS_LAND_REQUIREMENTSET'),
		('CVS_BERBER_REQUIREMENTSET_PLOT_WITHIN_TWO_OASIS', 'CVS_BERBER_REQUIRES_PLOT_WITHIN_TWO_OASIS'),
		('CVS_BERBER_REQUIREMENTSET_PLOT_WITHIN_TWO_OASIS', 'CVS_BERBER_REQUIRES_TERRAIN_IS_LAND_REQUIREMENTSET'),
		('CVS_BERBER_REQUIREMENTSET_TERRAIN_IS_LAND', 'CVS_BERBER_REQUIRES_TERRAIN_IS_GRASS'),
		('CVS_BERBER_REQUIREMENTSET_TERRAIN_IS_LAND', 'CVS_BERBER_REQUIRES_TERRAIN_IS_GRASS_HILLS'),
		('CVS_BERBER_REQUIREMENTSET_TERRAIN_IS_LAND', 'CVS_BERBER_REQUIRES_TERRAIN_IS_PLAINS'),
		('CVS_BERBER_REQUIREMENTSET_TERRAIN_IS_LAND', 'CVS_BERBER_REQUIRES_TERRAIN_IS_PLAINS_HILLS'),
		('CVS_BERBER_REQUIREMENTSET_TERRAIN_IS_LAND', 'CVS_BERBER_REQUIRES_TERRAIN_IS_DESERT'),
		('CVS_BERBER_REQUIREMENTSET_TERRAIN_IS_LAND', 'CVS_BERBER_REQUIRES_TERRAIN_IS_DESERT_HILLS'),
		('CVS_BERBER_REQUIREMENTSET_TERRAIN_IS_LAND', 'CVS_BERBER_REQUIRES_TERRAIN_IS_TUNDRA'),
		('CVS_BERBER_REQUIREMENTSET_TERRAIN_IS_LAND', 'CVS_BERBER_REQUIRES_TERRAIN_IS_TUNDRA_HILLS'),
		('CVS_BERBER_REQUIREMENTSET_TERRAIN_IS_LAND', 'CVS_BERBER_REQUIRES_TERRAIN_IS_SNOW'),
		('CVS_BERBER_REQUIREMENTSET_TERRAIN_IS_LAND', 'CVS_BERBER_REQUIRES_TERRAIN_IS_SNOW_HILLS');
		
INSERT INTO Requirements (RequirementId, RequirementType)
	VALUES
		('CVS_BERBER_REQUIRES_PLOT_WITHIN_ONE_OASIS', 'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'),
		('CVS_BERBER_REQUIRES_PLOT_WITHIN_TWO_OASIS', 'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_LAND_REQUIREMENTSET', 'REQUIREMENT_REQUIREMENTSET_IS_MET'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_GRASS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_GRASS_HILLS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_PLAINS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_PLAINS_HILLS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_DESERT', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_DESERT_HILLS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_TUNDRA', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_TUNDRA_HILLS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_SNOW', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_SNOW_HILLS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');

INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES
		('CVS_BERBER_REQUIRES_PLOT_WITHIN_ONE_OASIS', 'FeatureType', 'FEATURE_OASIS'),
		('CVS_BERBER_REQUIRES_PLOT_WITHIN_ONE_OASIS', 'MinRange', 0),
		('CVS_BERBER_REQUIRES_PLOT_WITHIN_ONE_OASIS', 'MaxRange', 1),
		('CVS_BERBER_REQUIRES_PLOT_WITHIN_TWO_OASIS', 'FeatureType', 'FEATURE_OASIS'),
		('CVS_BERBER_REQUIRES_PLOT_WITHIN_TWO_OASIS', 'MinRange', 0),
		('CVS_BERBER_REQUIRES_PLOT_WITHIN_TWO_OASIS', 'MaxRange', 2),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_LAND_REQUIREMENTSET', 'RequirementSetId', 'CVS_BERBER_REQUIREMENTSET_TERRAIN_IS_LAND'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_GRASS', 'TerrainType', 'TERRAIN_GRASS'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_GRASS_HILLS', 'TerrainType', 'TERRAIN_GRASS_HILLS'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_PLAINS', 'TerrainType', 'TERRAIN_PLAINS'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_PLAINS_HILLS', 'TerrainType', 'TERRAIN_PLAINS_HILLS'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_DESERT', 'TerrainType', 'TERRAIN_DESERT'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_DESERT_HILLS', 'TerrainType', 'TERRAIN_DESERT_HILLS'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_TUNDRA', 'TerrainType', 'TERRAIN_TUNDRA'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_TUNDRA_HILLS', 'TerrainType', 'TERRAIN_TUNDRA_HILLS'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_SNOW', 'TerrainType', 'TERRAIN_SNOW'),
		('CVS_BERBER_REQUIRES_TERRAIN_IS_SNOW_HILLS', 'TerrainType', 'TERRAIN_SNOW_HILLS');

--==========
--CITY NAMES
--==========		
INSERT INTO CityNames (CivilizationType, CityName)
	VALUES
		('CVS_CIVILIZATION_GARAMA', 'LOC_CVS_CITY_NAME_GARAMA');

--=============
--PLAYER COLORS
--=============
INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
	VALUES
		('CVS_CIVILIZATION_GARAMA', 'Minor', 'COLOR_PLAYER_CITY_STATE_PRIMARY', 'COLOR_PLAYER_CITY_STATE_TRADE_SECONDARY', 'COLOR_PLAYER_CITY_STATE_TRADE_SECONDARY');

--============
--START BIASES
--============
INSERT INTO StartBiasFeatures (CivilizationType, FeatureType, Tier)
	VALUES
		('CVS_CIVILIZATION_GARAMA', 'FEATURE_OASIS', 2);

INSERT INTO StartBiasTerrains
		(CivilizationType,					TerrainType,				Tier)
VALUES	('CVS_CIVILIZATION_GARAMA',			'TERRAIN_DESERT',			1);