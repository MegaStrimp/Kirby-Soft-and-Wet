///@description KSW - Game - Generate Catch Input List

function scr_KSW_Game_GenerateCatchInputList(rarity = 0)
{
	enum KSW_CatchInputList
	{
		up,
		down,
		left,
		right,
		wait
	}
	
	var list = -1;
	var currentLine = 0;
	var length = irandom_range(2 + (rarity * 2),3 + (rarity * 3));
	
	for (var i = 0; i < length; i++)
	{
		list[currentLine] = choose(KSW_CatchInputList.up,KSW_CatchInputList.down,KSW_CatchInputList.left,KSW_CatchInputList.right);
		currentLine += 1;
		if (((i % 4) == 3) and (length != i + 1))
		{
			list[currentLine] = KSW_CatchInputList.wait;
			currentLine += 1;
		}
	}
	
	list[currentLine - 1] = KSW_CatchInputList.up;
	
	return list;
}