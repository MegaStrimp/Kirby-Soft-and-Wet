///@description Enemy - Change State - Step

function scr_Enemy_ChangeState_Step(targetEnemy,targetState,targetEndState = -1)
{
	with (targetEnemy)
	{
		if (enemyAIStep != targetState)
		{
			enemyState_Setup = true;
			enemyAIStep = targetState;
			
			if (enemyAIStep_End != -1) script_execute(enemyAIStep_End);
			enemyAIStep_End = targetEndState;
		}
	}
}