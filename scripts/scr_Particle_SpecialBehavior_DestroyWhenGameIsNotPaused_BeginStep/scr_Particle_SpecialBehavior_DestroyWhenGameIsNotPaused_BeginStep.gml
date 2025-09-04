///@description Particle - Special Behavior - Destroy When Game Is Not Paused - Begin Step

function scr_Particle_SpecialBehavior_DestroyWhenGameIsNotPaused_BeginStep()
{
	if (!global.gamePause) instance_destroy();
}