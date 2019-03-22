--==========================================================================================================================
-- Berber / Trader Ability
--==========================================================================================================================
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	-- Trade Route Bonuses
		('TRAIT_CIVILIZATION_CVS_TAMAZGHA',		'ABILITY_CVS_BERBER_CLOAKED_MODIFIER');
-----------------------------------------------		
-- Modifiers
-----------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,											SubjectRequirementSetId)
VALUES	('ABILITY_CVS_BERBER_CLOAKED_MODIFIER',				'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',				null),
		('ABILITY_CVS_BERBER_CLOAKED_MODIFIER_EFFECT',		'MODIFIER_PLAYER_UNIT_ADJUST_HIDDEN_VISIBILITY',		'UNIT_IS_TRADER');

-----------------------------------------------		
-- ModifierArguments
-----------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,						Value)
VALUES	('ABILITY_CVS_BERBER_CLOAKED_MODIFIER',				'ModifierId',				'ABILITY_CVS_BERBER_CLOAKED_MODIFIER_EFFECT'),
		('ABILITY_CVS_BERBER_CLOAKED_MODIFIER_EFFECT',		'Hidden',					1);