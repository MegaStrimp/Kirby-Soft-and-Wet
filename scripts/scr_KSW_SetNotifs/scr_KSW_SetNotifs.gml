///@description KSW - Set Notifs

function scr_KSW_SetNotifs()
{
	#region Setup
	global.KSW_NotifList = [];
	global.KSW_NotifIDs = ds_map_create();
	#endregion
	
	#region Add Notifs Here
	#region Welcome
	var notifUnlockMethod = function()
	{
		return true;
	};
	
	var text = ["Welcome to [#7AD9FF]Kirby Soft & Wet[/color]! This is a game where you catch as many fish as you can!",
	"Simply throw your [#E68184]bobber[/color] and click the right keys when you're prompted before the time runs out!",
	"You can also come back in other [#E2BC22]times of day[/color] to get unique catches!",
	"Can you collect them all and fill your [#C64948]fishbook[/color]?"];
	
	var image = [spr_KSW_UI_NotifBox_Image_Welcome1,
	spr_KSW_UI_NotifBox_Image_Welcome2,
	spr_KSW_UI_NotifBox_Image_Welcome3,
	spr_KSW_UI_NotifBox_Image_Welcome4];
	
	scr_KSW_AddNotif("welcome",text,notifUnlockMethod,true,image);
	#endregion
	
	#region Shiny
	var notifUnlockMethod = function()
	{
		return true;
	};
	
	var text = ["You have obtained a Special [#FFD726]Shiny[/color] Fish!",
	"These [#FFD726]anomalies[/color] can very rarely be caught if you have the base variant registered!",
	"Having a high [#FF7F94]Catch Combo[/color] increases your chances of finding one!"];
	
	var image = [spr_KSW_UI_NotifBox_Image_Shiny1,
	spr_KSW_UI_NotifBox_Image_Shiny2,
	spr_KSW_UI_NotifBox_Image_Shiny3];
	
	scr_KSW_AddNotif("shiny",text,notifUnlockMethod,true,image);
	#endregion
	
	#region Stars
	var notifUnlockMethod = function()
	{
		return true;
	};
	
	var text = ["Finishing a certain task can reward you with a [#BFFF1E]Star[/color]!",
	"A true [#BFFF1E]Superstar[/color] wouldn't leave without obtaining them all!",
	"Some Stars can also unlock [#E68184]Special Bobbers[/color], so keep an eye on them!"];
	
	var image = [spr_KSW_UI_NotifBox_Image_Stars1,
	spr_KSW_UI_NotifBox_Image_Stars2,
	spr_KSW_UI_NotifBox_Image_Stars3];
	
	scr_KSW_AddNotif("stars",text,notifUnlockMethod,true,image);
	#endregion
	
	#region Completion
	var notifUnlockMethod = function()
	{
		return global.KSW_AchievementList[global.KSW_AchievementIDs[? "getAllStars"]].isObtained;
	};
	
	var text = ["Congratulations! You have collected every [#C64948]Fish[/color] and [#BFFF1E]Star[/color] that is available!",
	"Can you go [#FFD726]one step beyond[/color]? Is it even possible?"];
	
	var image = [spr_KSW_UI_NotifBox_Image_Completion1,
	spr_KSW_UI_NotifBox_Image_Completion2];
	
	scr_KSW_AddNotif("completion",text,notifUnlockMethod,true,image);
	#endregion
	
	#region Legend
	var notifUnlockMethod = function()
	{
		return global.KSW_AchievementList[global.KSW_AchievementIDs[? "doEverything"]].isObtained;
	};
	
	var text = ["Impossible! You have collected every [#FFD726]Shiny[/color] there is!",
	"You have proven yourself as the [#8E68C1]True Conquerer of the Ocean[/color]!",
	"* Unlocked the [#8E68C1]Legend of the Night[/color] bobber!"];
	
	var image = [spr_KSW_UI_NotifBox_Image_Legend1,
	spr_KSW_UI_NotifBox_Image_Legend2,
	spr_KSW_UI_NotifBox_Image_Legend3];
	
	scr_KSW_AddNotif("legend",text,notifUnlockMethod,true,image);
	#endregion
	
	#region Changelog
	var notifUnlockMethod = function()
	{
		return (global.versionNumber != global.savedVersionNumber);
	};
	
	var text = ["[#7AD9FF]Version 1.1.0[/color]\n* Something\n* Somethingsomething something something something something"];
	
	var image = [spr_KSW_UI_NotifBox_Image_AllHail];
	
	scr_KSW_AddNotif("changelog",text,notifUnlockMethod,false,image);
	#endregion
	
	#region Exit Game
	var notifUnlockMethod = function()
	{
		return true;
	};
	
	var text = ["Are you sure you want to exit?"];
	
	var notifNextScript = function()
	{
		game_end();
	};
	
	var notifBackScript = function()
	{
		scr_PlaySfx(snd_KSW_Splash2);
		
		isClosed = true;
		destroyTimer = destroyTimerMax;
	};
	
	scr_KSW_AddNotif("exitGame",text,notifUnlockMethod,false);
	scr_KSW_AddNotifPrompts("exitGame","Exit",notifNextScript,"Back",notifBackScript);
	#endregion
	
	#region Delete Save 1
	var notifUnlockMethod = function()
	{
		return true;
	};
	
	var text = ["Delete your save?"];
	
	var notifNextScript = function()
	{
		destroyTimer = 0;
		
		var notifID = global.KSW_NotifIDs[? "deleteSave2"];
		scr_KSW_ObtainNotif(notifID,true);
	};
	
	var notifBackScript = function()
	{
		scr_PlaySfx(snd_KSW_Splash2);
		
		isClosed = true;
		destroyTimer = destroyTimerMax;
	};
	
	scr_KSW_AddNotif("deleteSave1",text,notifUnlockMethod,false);
	scr_KSW_AddNotifPrompts("deleteSave1","Delete",notifNextScript,"Back",notifBackScript);
	#endregion
	
	#region Delete Save 2
	var notifUnlockMethod = function()
	{
		return true;
	};
	
	var text = ["Are you sure about that?"];
	
	var notifNextScript = function()
	{
		destroyTimer = 0;
		
		scr_PlaySfx(snd_KSW_DeleteSaveAlert);
		
		var notifID = global.KSW_NotifIDs[? "deleteSave3"];
		scr_KSW_ObtainNotif(notifID,true);
	};
	
	var notifBackScript = function()
	{
		scr_PlaySfx(snd_KSW_Splash2);
		
		isClosed = true;
		destroyTimer = destroyTimerMax;
	};
	
	scr_KSW_AddNotif("deleteSave2",text,notifUnlockMethod,false);
	scr_KSW_AddNotifPrompts("deleteSave2","Delete",notifNextScript,"Back",notifBackScript);
	#endregion
	
	#region Delete Save 3
	var notifUnlockMethod = function()
	{
		return true;
	};
	
	var notifNextScript = function()
	{
		scr_PlaySfx(snd_KSW_DeleteSave);
		
		scr_Camera_SetScreenshake(3,1);
		
		isClosed = true;
		destroyTimer = 0;
		
		scr_EraseData("data1.ini");
		scr_KSW_LoadData("data1.ini");
	};
	
	var notifBackScript = function()
	{
		scr_PlaySfx(snd_KSW_Splash2);
		
		isClosed = true;
		destroyTimer = destroyTimerMax;
	};
	
	var text = ["[#FF0000]You're sure you won't regret this?[/color]"];
	
	scr_KSW_AddNotif("deleteSave3",text,notifUnlockMethod,false);
	scr_KSW_AddNotifPrompts("deleteSave3","Delete",notifNextScript,"Back",notifBackScript);
	#endregion
	#endregion
}