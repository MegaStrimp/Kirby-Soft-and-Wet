///@description Room End

#region Variables
global.KSW_ForcedPhase = KSW_Phases.none;
#endregion

#region Stop Ambience
audio_stop_sound(mus_KSW_Ambience);
#endregion

#region Stop Event
scr_KSW_Event_End();
#endregion