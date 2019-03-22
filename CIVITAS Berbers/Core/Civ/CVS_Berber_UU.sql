--==========================================================================================================================
-- Sasanian / Aswar (Unit)
--==========================================================================================================================
-----------------------------------------------	
-- Tags
-----------------------------------------------	
INSERT INTO Tags
		(Tag,							Vocabulary)
VALUES	('CLASS_CVS_BERBER_UU',			'ABILITY_CLASS');
-----------------------------------------------	
-- TypeTags
-----------------------------------------------	
INSERT INTO TypeTags
		(Type,							Tag)
VALUES	('UNIT_CVS_BERBER_UU',			'CLASS_CVS_BERBER_UU'),
		('UNIT_CVS_BERBER_UU',			'CLASS_ANTI_CAVALRY'),
		('ABILITY_CVS_BERBER_UU',		'CLASS_CVS_BERBER_UU');
-----------------------------------------------
-- Units
-----------------------------------------------
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqCivic
		)
SELECT	'UNIT_CVS_BERBER_UU',	-- UnitType
		'LOC_UNIT_CVS_BERBER_UU_NAME',	-- Name
		'LOC_UNIT_CVS_BERBER_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_UNIT_CVS_BERBER_UU', -- TraitType
		BaseMoves,
		Cost * .8,
		PurchaseYield,
		AdvisorType,
		Combat - 7,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		'CIVIC_MILITARY_TRAINING'
FROM	Units
WHERE	UnitType = 'UNIT_PIKEMAN';
-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
INSERT INTO UnitUpgrades
		(Unit,					UpgradeUnit)
SELECT 	'UNIT_CVS_BERBER_UU',	UpgradeUnit
FROM UnitUpgrades WHERE Unit = 'UNIT_PIKEMAN';
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType	)
VALUES	('UNIT_CVS_BERBER_UU',	'UNIT_PIKEMAN'		);
-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
INSERT INTO UnitAiInfos
			(UnitType,							AiType)
SELECT 		'UNIT_CVS_BERBER_UU',				AiType
FROM UnitAiInfos WHERE UnitType = 'UNIT_PIKEMAN';
-----------------------------------------------
-- Types
-----------------------------------------------
INSERT INTO Types
		(Type,									Kind)
VALUES	('ABILITY_CVS_BERBER_UU',				'KIND_ABILITY');
-----------------------------------------------
-- UnitAbilities
-----------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,						Name,										Description)
VALUES	('ABILITY_CVS_BERBER_UU',				'LOC_ABILITY_CVS_BERBER_UU_NAME',			'LOC_ABILITY_CVS_BERBER_UU_DESCRIPTION');
-----------------------------------------------
--  UnitAbilityModifiers
-----------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId)
VALUES	('ABILITY_CVS_BERBER_UU',				'ABILITY_CVS_BERBER_UU_DEFENDING'),
		('ABILITY_CVS_BERBER_UU',				'ABILITY_CVS_BERBER_UU_DEFENDING_FRIENDLY');
-----------------------------------------------
-- Modifiers
-----------------------------------------------
INSERT INTO	Modifiers
		(ModifierId,									ModifierType,									SubjectRequirementSetId)
VALUES	('ABILITY_CVS_BERBER_UU_DEFENDING',				'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'CREW_WEAPONS_REQUIREMENTS'),
		('ABILITY_CVS_BERBER_UU_DEFENDING_FRIENDLY',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'REQSET_DEFENDING_IN_FRIENDLY');
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT INTO	ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('ABILITY_CVS_BERBER_UU_DEFENDING',				'Amount',		7),
		('ABILITY_CVS_BERBER_UU_DEFENDING_FRIENDLY',	'Amount',		7);
-----------------------------------------------
-- ModifierStrings
-----------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,									Context,	Text)
VALUES	('ABILITY_CVS_BERBER_UU_DEFENDING',				'Preview',	'LOC_ABILITY_CVS_BERBER_UU_DEFENDING_PREVIEW_TEXT'),
		('ABILITY_CVS_BERBER_UU_DEFENDING_FRIENDLY',	'Preview',	'LOC_ABILITY_CVS_BERBER_UU_DEFENDING_FRIENDLY_PREVIEW_TEXT');
-----------------------------------------------
-- Requirement Sets
-----------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('REQSET_DEFENDING_IN_FRIENDLY',							'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------	
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('REQSET_DEFENDING_IN_FRIENDLY',					'PLAYER_IS_DEFENDER_REQUIREMENTS'),
		('REQSET_DEFENDING_IN_FRIENDLY',					'UNIT_IN_OWNER_TERRITORY_REQUIREMENT');