///@description Room Creation Code

#region Variables
global.hasHud = false;
#endregion

#region Music
if (audio_get_name(global.musicPlaying) != "mus_KSW_Fishbook")
{
	audio_stop_sound(global.musicPlaying);
	global.musicPlaying = audio_play_sound(mus_KSW_Fishbook,0,true);
	
	if (global.KSW_EnteredAquarium)
	{
		var loopPoint = global.KSW_AudioStartPoints[mus_KSW_Fishbook][irandom_range(0,array_length(global.KSW_AudioStartPoints[mus_KSW_Fishbook]) - 1)];
		audio_sound_set_track_position(global.musicPlaying,loopPoint);
	}
}
#endregion

#region Set Background
instance_create_depth(0,0,100,obj_KSW_Background_Underwater);
#endregion

#region Discord
scr_Discord_Setup("Title Screen",-1,"icon",global.gameTitle + " " + global.versionNumber,"strimp","From Strimp's Kitchen");
#endregion

#region Entered
global.KSW_EnteredAquarium = true;
#endregion

#region Spawn Fishes
for (var i = 0; i < global.KSW_FishCount; i++)
{
	var amount = global.KSW_FishList[i].isCaught - global.KSW_FishList[i].isCaughtShiny;
	if (amount > 0)
	{
		for (var j = 0; j < amount; j++)
		{
			with (instance_create_depth(irandom_range(0,room_width),irandom_range(0,room_height),irandom_range(1,99),obj_KSW_Menu_Aquarium_Fish))
			{
				sprite_index = global.KSW_FishList[i].sprite;
				
				scale = random_range(.25,1);
				scale = 1;
				dirX = choose(-1,1);
				drawDirX = dirX;
				
				image_xscale = scale * drawDirX;
				image_yscale = scale;
			}
		}
	}
	
	amount = global.KSW_FishList[i].isCaughtShiny;
	if (amount > 0)
	{
		for (var j = 0; j < amount; j++)
		{
			with (instance_create_depth(irandom_range(0,room_width),irandom_range(0,room_height),irandom_range(1,99),obj_KSW_Menu_Aquarium_Fish))
			{
				sprite_index = global.KSW_FishList[i].sprite;
				
				palSprite = global.KSW_FishList[i].palette;
				isShiny = true;
				
				scale = random_range(.25,1);
				scale = 1;
				dirX = choose(-1,1);
				drawDirX = dirX;
				
				image_xscale = scale * drawDirX;
				image_yscale = scale;
			}
		}
	}
	
	var maxFishes = 300;
	if (global.isMobile) maxFishes = 60;
	
	while (instance_number(obj_KSW_Menu_Aquarium_Fish) >= maxFishes)
	{
		with (obj_KSW_Menu_Aquarium_Fish)
		{
			var rng = irandom_range(0,2);
			if (rng == 0) instance_destroy();
		}
	}
}
#endregion