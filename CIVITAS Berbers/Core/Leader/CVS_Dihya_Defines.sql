--==========================================================================================================================
--
--            .
--            |\
--            | \
--            |  \
--            |   \
--            |    \          Dihya by CIVITAS
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
-- Dihya / Defines
--==========================================================================================================================
-----------------------------------------------
-- Types
-----------------------------------------------	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('LEADER_CVS_DIHYA',		'KIND_LEADER');
-----------------------------------------------	
-- Leaders
-----------------------------------------------	
INSERT INTO Leaders	
		(LeaderType,				Name,								Sex,		InheritFrom,		SceneLayers)
VALUES	('LEADER_CVS_DIHYA',		'LOC_LEADER_CVS_DIHYA_NAME',		'Female',	'LEADER_DEFAULT',	2);	
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------	
INSERT INTO CivilizationLeaders	
		(CivilizationType,				LeaderType,				CapitalName)
VALUES	('CIVILIZATION_CVS_BERBER',		'LEADER_CVS_DIHYA',		'LOC_CITY_NAME_SC_KHENCHELA');
-----------------------------------------------	
-- PlayerColors
-----------------------------------------------	
INSERT INTO PlayerColors	
		(Type,						Usage,			PrimaryColor, 									SecondaryColor,									TextColor)
VALUES	('LEADER_CVS_DIHYA',		'Unique',		'COLOR_PLAYER_CVS_BERBER_DIHYA_PRIMARY',		'COLOR_PLAYER_CVS_BERBER_DIHYA_SECONDARY', 		'COLOR_PLAYER_WHITE_TEXT');	

INSERT INTO Colors
        (Type,										 Color)
VALUES  ('COLOR_PLAYER_CVS_BERBER_DIHYA_PRIMARY',    '137,29,29,255'),
		('COLOR_PLAYER_CVS_BERBER_DIHYA_SECONDARY',  '108,171,70,255');
-----------------------------------------------		
-- BackGround Art		
-----------------------------------------------			
INSERT INTO DiplomacyInfo			
		(Type,						BackgroundImage)
VALUES	('LEADER_CVS_DIHYA',		'ART_LEADER_CVS_DIHYA.dds');
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,				Quote)
VALUES	('LEADER_CVS_DIHYA',		'LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DIHYA_QUOTE');	
--==========================================================================================================================
-- LEADERS: LOADING INFO
--==========================================================================================================================
-----------------------------------------------	
-- LoadingInfo
-----------------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				BackgroundImage, 						ForegroundImage,			PlayDawnOfManAudio)
VALUES	('LEADER_CVS_DIHYA',		'LEADER_GORGO_BACKGROUND',				'LEADER_CVS_DIHYA_NEUTRAL',	0);	
