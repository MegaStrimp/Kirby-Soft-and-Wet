///@description Create

#region Initialize Variables
speedMultFinal = global.speedMultGlobal * global.deltaTime;
localPause = global.pauseFinal;

alpha = 0;
alphaTarget = 1;

if (global.shaders)
{
	shaderRes = shader_get_uniform(shd_KSW_Event_DimensionalFissure,"iResolution");
	shaderTime = shader_get_uniform(shd_KSW_Event_DimensionalFissure,"iGlobalTime");
	shaderAlpha = shader_get_uniform(shd_KSW_Event_DimensionalFissure,"alpha");
}
#endregion