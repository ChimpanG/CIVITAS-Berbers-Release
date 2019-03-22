-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------
INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,					Texture)
VALUES ('MOMENT_ILLUSTRATION_UNIQUE_UNIT',			'MOMENT_DATA_UNIT',			'UNIT_CVS_BERBER_UU',			'MOMENT_CVS_BERBERS_UU.dds'),
	   ('MOMENT_ILLUSTRATION_UNIQUE_IMPROVEMENT',	'MOMENT_DATA_IMPROVEMENT',	'IMPROVEMENT_CVS_BERBER_UI',	'Moment_Infrastructure_CVS_Foggara.dds');

-----------------------------------------------
-- Sex
-----------------------------------------------
UPDATE    Leaders
SET        Sex = 'Female'
WHERE    LeaderType = 'LEADER_CVS_DIHYA';