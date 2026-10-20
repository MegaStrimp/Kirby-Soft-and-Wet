///@description KSW - Add Drink

function scr_KSW_AddDrink(targetID,targetName,targetSprite,targetStage)
{
	ds_map_add(global.KSW_DrinkIDs,targetID,global.KSW_DrinkCount);
	
	global.KSW_DrinkList[global.KSW_DrinkCount] = 
	{
        ID: targetID,
        name: targetName,
        sprite: targetSprite,
        stage: targetStage
    };
	
	global.KSW_DrinkCount += 1;
}