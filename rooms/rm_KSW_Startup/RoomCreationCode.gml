///@description Creation Code

#region Go To Next Room
var targetRoom = rm_KSW_Menu_SplashScreen;

if (global.debug)
{
	room_goto(targetRoom);
}
else
{
	scr_AlivelInstaller_Setup("https://github.com/MegaStrimp/Kirby-Soft-and-Wet/releases/latest/download/KirbySoftAndWet.zip",
	"https://raw.githubusercontent.com/MegaStrimp/Kirby-Soft-and-Wet/refs/heads/main/version",
	targetRoom);
}
#endregion