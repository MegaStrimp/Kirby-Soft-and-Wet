///@description KSW - Player - Equip - Hat

function scr_KSW_Player_Equip_Hat(targetCharacterID,targetHatID)
{
	global.KSW_CharacterList[targetCharacterID].equippedHat = targetHatID;
}