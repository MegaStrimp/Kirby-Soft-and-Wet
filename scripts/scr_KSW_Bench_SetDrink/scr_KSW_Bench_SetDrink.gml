///@description KSW - Bench - Set Drink

function scr_KSW_Bench_SetDrink()
{
	var drinkList = ds_list_create();
	
	for (var i = 0; i < global.KSW_DrinkCount; i++)
	{
		var currentDrink = global.KSW_DrinkList[i];
		
		if ((currentDrink.stage == -1) or (global.KSW_CurrentStageID == currentDrink.stage))
		{
			ds_list_add(drinkList,i);
		}
	}
	
	ds_list_shuffle(drinkList);
	
	var chosenDrink = global.KSW_DrinkList[ds_list_find_value(drinkList,0)];
	
	ds_list_destroy(drinkList);
	
	drinkSprite = chosenDrink.sprite;
	drinkIndex = 0;
	drinkSpeed = sprite_get_speed(drinkSprite) / 60;
	drinkNumber = sprite_get_number(drinkSprite);
}