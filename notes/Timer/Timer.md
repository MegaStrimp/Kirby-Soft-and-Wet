#region Timer
if (Timer != -1)
{
	Timer = max(Timer - speedMultFinal,0);
	if (Timer == 0)
	{
		Timer = -1;
	}
}
#endregion