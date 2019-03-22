--==========================================================================================================================
-- Dihya / AI by CIVITAS
--==========================================================================================================================
-----------------------------------------------	
-- FavoredReligions
-----------------------------------------------	
INSERT INTO FavoredReligions	
		(LeaderType,				ReligionType)
VALUES	('LEADER_CVS_DIHYA',		'RELIGION_JUDAISM');
-----------------------------------------------	
-- AiListTypes
-----------------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('CVS_DIHYA_Civics'),
		('CVS_DIHYA_Techs'),
		('CVS_DIHYA_Buildings'),
		('CVS_DIHYA_Districts'),
		('CVS_DIHYA_PseudoYields'),
		('CVS_DIHYA_Units'),
		('CVS_DIHYA_FavorDominationVictory'),
		('CVS_DIHYA_Diplomacy'),
		('CVS_DIHYA_Yields'),
		('CVS_DIHYA_Settlement'),
		('CVS_DIHYA_Improvements');
-----------------------------------------------	
-- AiLists
-----------------------------------------------	
INSERT INTO AiLists	
		(ListType,						 AgendaType,									System)
VALUES	('CVS_DIHYA_Civics',			 'TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',		'Civics'),
		('CVS_DIHYA_Techs',				 'TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',		'Technologies'),
		('CVS_DIHYA_Buildings',			 'TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',		'Buildings'),
		('CVS_DIHYA_Improvements',		 'TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',		'Improvements'),
		('CVS_DIHYA_Districts',			 'TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',		'Districts'),
		('CVS_DIHYA_PseudoYields',		 'TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',		'PseudoYields'),
		('CVS_DIHYA_Units',				 'TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',		'Units'),
		('CVS_DIHYA_Diplomacy',			 'TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',		'DiplomaticActions'),
		('CVS_DIHYA_Yields',			 'TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',		'Yields'),
		('CVS_DIHYA_Settlement',		 'TRAIT_AGENDA_CVS_QUEEN_OF_THE_BERBERS',		'PlotEvaluations');
-----------------------------------------------	
-- AiFavoredItems
-----------------------------------------------
		-- Units
INSERT INTO AiFavoredItems	
		(ListType,						Favored,	Value,		Item)
VALUES	('CVS_DIHYA_PseudoYields',		1,			50,			'PSEUDOYIELD_GPP_MERCHANT'),
		('CVS_DIHYA_Units',				1,			50,			'UNIT_GREAT_MERCHANT'),
		('CVS_DIHYA_Units',				1,			50,			'UNIT_CVS_BERBER_UU'),
		('CVS_DIHYA_Units',				1,			50,			'UNIT_TRADER');

		-- Buildings & Districts
INSERT INTO AiFavoredItems	
		(ListType,						Favored,	Item)
VALUES	('CVS_DIHYA_Buildings',			1,			'BUILDING_MARKET'),
		('CVS_DIHYA_Buildings',			1,			'BUILDING_WALLS'),
		('CVS_DIHYA_Buildings',			1,			'BUILDING_CASTLE'),
		('CVS_DIHYA_Buildings',			1,			'BUILDING_STAR_FORT'),
		('CVS_DIHYA_Improvements',		1,			'IMPROVEMENT_CVS_BERBER_UI'),
		('CVS_DIHYA_Districts',			1,			'DISTRICT_ENCAMPMENT'),
		('CVS_DIHYA_Districts',			1,			'DISTRICT_COMMERCIAL_HUB');

		-- Civics & Techs
INSERT INTO AiFavoredItems	
		(ListType,						Item,							Favored)
VALUES	('CVS_DIHYA_Civics',			'CIVIC_MILITARY_TRAINING',		1),
		('CVS_DIHYA_Civics',			'CIVIC_MERCANTILISM',			1),
		('CVS_DIHYA_Civics',			'CIVIC_FOREIGN_TRADE',			1),
		('CVS_DIHYA_Techs',				'TECH_CURRENCY',				1),
		('CVS_DIHYA_Techs',				'TECH_IRRIGATION',				1);

		-- Victories
INSERT INTO AiFavoredItems	
		(ListType,									Item,									Favored)
VALUES	('CVS_DIHYA_FavorDominationVictory',		'VICTORY_STRATEGY_MILITARY_VICTORY',	0);

        -- Wars
INSERT INTO AiFavoredItems	
		(ListType,									Item,									Favored)
VALUES	('CVS_DIHYA_Diplomacy',						'DIPLOACTION_DECLARE_SURPRISE_WAR',		0),
		('CVS_DIHYA_Diplomacy',						'DIPLOACTION_DECLARE_WAR_MINOR_CIV',	0),
		('CVS_DIHYA_Diplomacy',						'DIPLOACTION_DECLARE_FORMAL_WAR',		0),
		('CVS_DIHYA_Diplomacy',						'DIPLOACTION_DECLARE_HOLY_WAR',			0),
		('CVS_DIHYA_Diplomacy',						'DIPLOACTION_DECLARE_RECONQUEST_WAR',	0),
		('CVS_DIHYA_Diplomacy',						'DIPLOACTION_DECLARE_TERRITORIAL_WAR',	0),
		('CVS_DIHYA_Diplomacy',						'DIPLOACTION_JOINT_WAR',				0),
		('CVS_DIHYA_Diplomacy',						'DIPLOACTION_DECLARE_PROTECTORATE_WAR',	0),
		('CVS_DIHYA_Diplomacy',						'DIPLOACTION_DECLARE_LIBERATION_WAR',	0),
		('CVS_DIHYA_Diplomacy',						'DIPLOACTION_DECLARE_COLONIAL_WAR',		0);

		-- Yields
INSERT INTO AiFavoredItems	
		(ListType,						Value,		Item)
VALUES	('CVS_DIHYA_Yields',			50,			'YIELD_GOLD');

		-- Settlement
INSERT INTO AiFavoredItems	
		(ListType,						Favored,	Item,					StringVal)
VALUES	('CVS_DIHYA_Settlement',		1,			'Specific Feature',		'FEATURE_OASIS');

--=============================================
-- Expac-Only Values
--=============================================
INSERT INTO AiFavoredItems
		(ListType,						Item,								Favored)
SELECT	'CVS_DIHYA_Diplomacy',			'DIPLOACTION_ALLIANCE_ECONOMIC',	1
WHERE EXISTS (SELECT ModifierType FROM DynamicModifiers WHERE ModifierType = 'MODIFIER_SINGLE_CITY_ADJUST_IDENTITY_PER_TURN');
