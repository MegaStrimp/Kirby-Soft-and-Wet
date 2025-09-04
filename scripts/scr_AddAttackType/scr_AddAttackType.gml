///@description Add Attack Type

function scr_AddAttackType(targetID)
{
	ds_map_add(global.AttackTypeIDs,targetID,ds_map_size(global.AttackTypeIDs));
	
	global.AttackTypeList[global.AttackTypeIDs[? targetID]] = 
	{
        id: targetID
    };
}