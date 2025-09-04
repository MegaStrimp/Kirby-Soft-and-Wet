///@description Discord Setup

function scr_Discord_Setup(discordDetailText,discordStateText,discordLargeImage,discordLargeImageText,discordSmallImage,discordSmallImageText)
{
	#region Set Discord Rich Presence
	if (global.discord)
	{
		np_setpresence_more(discordSmallImageText,discordLargeImageText,false);
		np_setpresence(discordStateText,discordDetailText,discordLargeImage,discordSmallImage);
	}
	#endregion
}