///@description KSW - Audio Setup

function scr_KSW_AudioSetup()
{
	#region Start Points
	global.KSW_AudioStartPoints = {};
	
	global.KSW_AudioStartPoints[mus_KSW_Title] = [0,20.6,35.5,49,65.6];
	global.KSW_AudioStartPoints[mus_KSW_Fishbook] = [0,28.2];
	global.KSW_AudioStartPoints[mus_KSW_Settings] = [0,22.5,37.5];
	global.KSW_AudioStartPoints[mus_KSW_Stars] = [0,16.6,46.6];
	#endregion
	
	#region Loop Points
	audio_sound_loop_start(mus_KSW_Title,0);
	audio_sound_loop_start(mus_KSW_Credits,5.66);
	audio_sound_loop_start(mus_KSW_Settings,7.5);
	audio_sound_loop_start(mus_KSW_Stars,5.66);
	#endregion
	
	#region Phase Music Pools
	global.KSW_PhaseMusicPools = {};
	
	#region Day
	global.KSW_PhaseMusicPools[KSW_Phases.day] = 
	[
		mus_KSW_PipoPipo,
		mus_KSW_RippleField1,
		mus_KSW_FloatIslands1,
		mus_KSW_FloatIslands2,
		mus_KSW_FloatIslands3,
		mus_KSW_FloralFields,
		mus_KSW_SubmarineTorpedo,
		mus_KSW_SurfingStars,
		mus_KSW_WhispyStage,
		mus_KSW_FirstHole,
		mus_KSW_OnionOcean,
		mus_KSW_ReefResort
	];
	#endregion
	
	#region Afternoon
	global.KSW_PhaseMusicPools[KSW_Phases.afternoon] = 
	[
		mus_KSW_RippleField3,
		mus_KSW_SeaDrifting,
		mus_KSW_SeaStage1,
		mus_KSW_SeaStage2,
		mus_KSW_AquaStar,
		mus_KSW_BountifulStar,
		mus_KSW_HappyMambo,
		mus_KSW_KinesTheme,
		mus_KSW_Misteen,
		mus_KSW_OverWater,
		mus_KSW_WateryGraves,
		mus_KSW_PerplexingPool,
		mus_KSW_Tank2
	];
	#endregion
	
	#region Night
	global.KSW_PhaseMusicPools[KSW_Phases.night] = 
	[
		mus_KSW_RippleField2,
		mus_KSW_SummerSands,
		mus_KSW_AbandonedBeach,
		mus_KSW_CastlesCake,
		mus_KSW_DreamCourseCredits,
		mus_KSW_EchosEdge,
		mus_KSW_IcebergOcean,
		mus_KSW_JigsawPlains,
		mus_KSW_RideSky
	];
	#endregion
	#endregion
}