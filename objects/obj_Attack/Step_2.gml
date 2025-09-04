///@description End Step

#region Follow Owner
if (followOwner)
{
	x = owner.x;
	y = owner.y;
	localPause = owner.localPause;
}

if (followOwnerImageIndex)
{
	image_index = owner.image_index;
}
#endregion

#region AI End Step
if (attackAIEndStep != -1) script_execute(attackAIEndStep);
#endregion