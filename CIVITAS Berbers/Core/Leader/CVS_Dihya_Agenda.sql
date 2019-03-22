--==========================================================================================================================
-- Dihya / Agenda by CIVITAS
--==========================================================================================================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types
		(Type,													Kind)
VALUES	('TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',				'KIND_TRAIT');
-----------------------------------------------	
-- Agendas
-----------------------------------------------	
INSERT INTO Agendas
		(AgendaType,											Name,										Description)
VALUES	('AGENDA_CVS_QUEEN_OF_THE_BERBERS',						'LOC_AGENDA_CVS_QUEEN_OF_THE_BERBERS_NAME',	'LOC_AGENDA_CVS_QUEEN_OF_THE_BERBERS_DESCRIPTION');
-----------------------------------------------	
-- Traits
-----------------------------------------------	
INSERT INTO Traits
		(TraitType,												Name,					Description)
VALUES	('TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',				'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');
-----------------------------------------------	
-- AgendaTraits
-----------------------------------------------	
INSERT INTO AgendaTraits
		(AgendaType,											TraitType)
VALUES	('AGENDA_CVS_QUEEN_OF_THE_BERBERS',						'TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS');
-----------------------------------------------	
-- TraitModifiers
-----------------------------------------------	
INSERT INTO TraitModifiers
		(TraitType,												ModifierId)
VALUES	('TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',				'AGENDA_CVS_QUEEN_OF_THE_BERBERS_TREASURY'),
		('TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',				'AGENDA_CVS_QUEEN_OF_THE_BERBERS_TICKETYBOO'),
		('TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',				'AGENDA_CVS_QUEEN_OF_THE_BERBERS_BADMANWARS');
-----------------------------------------------	
-- Modifiers
-----------------------------------------------	
INSERT INTO Modifiers	
		(ModifierId,											ModifierType,											SubjectRequirementSetId)
VALUES	('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TREASURY',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'CVS_QOTB_PLAYER_HEFTY_SACK'),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TICKETYBOO',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'CVS_QOTB_PLAYER_SWELL_CITIZENS'),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_BADMANWARS',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'CVS_QOTB_PLAYER_SHITTING_ON_LAWN');
-----------------------------------------------	
-- ModifierArguments
-----------------------------------------------	
INSERT INTO ModifierArguments
		(ModifierId,											Name,							Value)
VALUES	('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TREASURY',			'InitialValue',					7),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TREASURY',			'ReductionTurns',				7),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TREASURY',			'ReductionValue',				-1),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TREASURY',			'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_DIHYA_REASON_TREASURY'),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TREASURY',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_QUEEN_OF_THE_BERBERS_TREASURY'),

		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TICKETYBOO',			'InitialValue',					7),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TICKETYBOO',			'ReductionTurns',				7),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TICKETYBOO',			'ReductionValue',				-1),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TICKETYBOO',			'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_DIHYA_REASON_TICKETYBOO'),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TICKETYBOO',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_QUEEN_OF_THE_BERBERS_TICKETYBOO'),

		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_BADMANWARS',			'InitialValue',					-10),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_BADMANWARS',			'ReductionTurns',				10),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_BADMANWARS',			'ReductionValue',				-1),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_BADMANWARS',			'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_DIHYA_REASON_BADMANWARS'),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_BADMANWARS',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_QUEEN_OF_THE_BERBERS_BADMANWARS');
-----------------------------------------------	
-- RequirementSets
-----------------------------------------------	
INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	('CVS_QOTB_PLAYER_HEFTY_SACK',							'REQUIREMENTSET_TEST_ALL'),
		('CVS_QOTB_PLAYER_SWELL_CITIZENS',						'REQUIREMENTSET_TEST_ALL'),
		('CVS_QOTB_PLAYER_SHITTING_ON_LAWN',					'REQUIREMENTSET_TEST_ALL');
-----------------------------------------------	
-- RequirementSetRequirements
-----------------------------------------------	
INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
VALUES	('CVS_QOTB_PLAYER_HEFTY_SACK',							'REQUIRES_HAS_HIGH_INCOME'),
		('CVS_QOTB_PLAYER_HEFTY_SACK',							'REQUIRES_MAJOR_CIV_OPPONENT'),
		('CVS_QOTB_PLAYER_HEFTY_SACK',							'REQUIRES_MET_10_TURNS_AGO'),

		('CVS_QOTB_PLAYER_SWELL_CITIZENS',						'REQUIRES_HAS_HIGH_HAPPINESS'),
		('CVS_QOTB_PLAYER_SWELL_CITIZENS',						'REQUIRES_MAJOR_CIV_OPPONENT'),
		('CVS_QOTB_PLAYER_SWELL_CITIZENS',						'REQUIRES_MET_10_TURNS_AGO'),

		('CVS_QOTB_PLAYER_SHITTING_ON_LAWN',					'REQUIRES_ATTACKED_CONTINENT'),
		('CVS_QOTB_PLAYER_SHITTING_ON_LAWN',					'REQUIRES_MAJOR_CIV_OPPONENT'),
		('CVS_QOTB_PLAYER_SHITTING_ON_LAWN',					'REQUIRES_PLAYERS_HAVE_MET');
-----------------------------------------------	
-- HistoricalAgendas
-----------------------------------------------	
INSERT INTO HistoricalAgendas
		(LeaderType,											AgendaType)
VALUES	('LEADER_CVS_DIHYA',									'AGENDA_CVS_QUEEN_OF_THE_BERBERS');
-----------------------------------------------	
-- ExclusiveAgendas
-----------------------------------------------	
INSERT INTO ExclusiveAgendas
		(AgendaOne,												AgendaTwo)
VALUES	('AGENDA_CVS_QUEEN_OF_THE_BERBERS',						'AGENDA_STANDING_ARMY'),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS',						'AGENDA_DARWINIST'),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS',						'AGENDA_MONEY_GRUBBER'),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS',						'AGENDA_FUN_LOVING');
-----------------------------------------------
-- AgendaPreferredLeaders
-----------------------------------------------	
INSERT INTO AgendaPreferredLeaders
		(AgendaType,							LeaderType)
VALUES	('AGENDA_PARANOID',						'LEADER_CVS_DIHYA');
-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,											Context,		Text)
VALUES	('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TREASURY',			'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_TICKETYBOO',			'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_CVS_QUEEN_OF_THE_BERBERS_BADMANWARS',			'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
