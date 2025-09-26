///@description KSW - Player - Equip - Spray Paint

function scr_KSW_Player_Equip_SprayPaint(targetCharacterID,targetSprayPaintID)
{
	global.KSW_CharacterList[targetCharacterID].equippedSprayPaint = targetSprayPaintID;
}