///@description Room Creation Code

#region Variables
global.hasHud = false;
#endregion

#region Music
audio_stop_sound(global.musicPlaying);
#endregion

#region Discord
//scr_Discord_Setup("Stars","Completion " + string(global.KSW_ObtainedAchievementCount) + "/" + string(global.KSW_VisibleAchievementCount),"icon",global.gameTitle + " " + global.versionNumber,"strimp","From Strimp's Kitchen"); STRIMPTODO
#endregion

#region Entered
global.KSW_EnteredSecretStars = true;
#endregion