///@description Draw

#region Bench
draw_sprite(global.KSW_BenchList[global.KSW_CurrentBenchID].sprite,0,x,y);
#endregion

#region Drink
if (drinkSprite != -1) draw_sprite(drinkSprite,drinkIndex,x - 14,y - 1);
#endregion