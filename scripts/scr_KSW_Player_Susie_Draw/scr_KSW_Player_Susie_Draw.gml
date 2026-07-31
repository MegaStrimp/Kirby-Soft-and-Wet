///@description KSW - Player - Susie - Draw

function scr_KSW_Player_Susie_Draw()
{
	#region Variables
	var bobberShakeFinal = bobberShake * irandom_range(-1,1);
	#endregion
	
	#region Bait
	if (baitTexture != -1)
	{
		var surfaceWidth = baitWidth * 2;
		var surfaceHeight = baitHeight * 2;
		
		if (!surface_exists(baitSurface)) baitSurface = surface_create(surfaceWidth,surfaceHeight);
		
		var surfaceOffsetX = bobberX + bobberShakeFinal - (surfaceWidth / 2) - bobberXOffset;
		var surfaceOffsetY = bobberY - (surfaceHeight / 2) - bobberYOffset;
		
		surface_set_target(baitSurface);
		draw_clear_alpha(c_black,0);
		
		gpu_set_blendmode(bm_normal);
		draw_sprite_ext(spr_KSW_Bait_Mask,0,(surfaceWidth / 2),(surfaceHeight / 2),1,1,baitAngle,c_white,.95);
		
		gpu_set_blendmode_ext_sepalpha(bm_dest_alpha,bm_zero,bm_zero,bm_one);
		for (var i = -2; i < 2; i++)
		{
		    for (var h = -2; h < 2; h++)
		    {
		        draw_sprite(baitTexture,0,(surfaceWidth / 2) + baitX + (baitWidth * i),(surfaceHeight / 2) + baitY + (baitHeight * h));
		    }
		}
		
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
		
		draw_surface(baitSurface,surfaceOffsetX,surfaceOffsetY);
	}
	#endregion
	
	#region Bobber
	scr_DrawCurve(rodX + shakeXFinal,rodY,bobberX + bobberShakeFinal,bobberY,0,8);
	draw_sprite(sprBobber,sprBobberImageIndex,bobberX + bobberShakeFinal,bobberY);
	#endregion
	
	#region Rod
	var targetRodSprite = undefined;
	
	switch (sprite_index)
	{
		case sprReady:
		targetRodSprite = sprReady_Rod;
		break;
		
		case sprThrow:
		targetRodSprite = sprThrow_Rod;
		break;
		
		case sprWait:
		targetRodSprite = sprWait_Rod;
		break;
		
		case sprFound:
		targetRodSprite = sprFound_Rod;
		break;
		
		case sprUp:
		targetRodSprite = sprUp_Rod;
		break;
		
		case sprUpAnim:
		targetRodSprite = sprUpAnim_Rod;
		break;
		
		case sprDown:
		targetRodSprite = sprDown_Rod;
		break;
		
		case sprDownAnim:
		targetRodSprite = sprDownAnim_Rod;
		break;
		
		case sprLeft:
		targetRodSprite = sprLeft_Rod;
		break;
		
		case sprLeftAnim:
		targetRodSprite = sprLeftAnim_Rod;
		break;
		
		case sprRight:
		targetRodSprite = sprRight_Rod;
		break;
		
		case sprRightAnim:
		targetRodSprite = sprRightAnim_Rod;
		break;
		
		case sprFailed:
		targetRodSprite = sprFailed_Rod;
		break;
		
		case sprSuccess:
		targetRodSprite = sprSuccess_Rod;
		break;
	}
	#endregion
	
	#region Hat
	var currentHat = global.KSW_PlayerEquippedHatID[playerNum][global.playerCharacter[playerNum]];
	var targetHatSprite = undefined;
	var targetHatShadowSprite = undefined;
	
	if (currentHat != 0)
	{
		switch (sprite_index)
		{
			case sprReady:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprReady;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprReady_Shadow;
			break;
			
			case sprThrow:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprThrow;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprThrow_Shadow;
			break;
			
			case sprWait:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprWait;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprWait_Shadow;
			break;
			
			case sprFound:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprFound;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprFound_Shadow;
			break;
			
			case sprUp:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprUp;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprUp_Shadow;
			break;
			
			case sprUpAnim:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprUpAnim;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprUpAnim_Shadow;
			break;
			
			case sprDown:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprDown;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprDown_Shadow;
			break;
			
			case sprDownAnim:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprDownAnim;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprDownAnim_Shadow;
			break;
			
			case sprLeft:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprLeft;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprLeft_Shadow;
			break;
			
			case sprLeftAnim:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprLeftAnim;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprLeftAnim_Shadow;
			break;
			
			case sprRight:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprRight;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprRight_Shadow;
			break;
			
			case sprRightAnim:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprRightAnim;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprRightAnim_Shadow;
			break;
			
			case sprFailed:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprFailed;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprFailed_Shadow;
			break;
			
			case sprSuccess:
			targetHatSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprSuccess;
			targetHatShadowSprite = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[currentHat].spriteSet.sprSuccess_Shadow;
			break;
		}
	}
	#endregion
	
	#region Draw Self
	if (sprite_index != -1)
	{
		var currentSprayPaint = global.KSW_PlayerEquippedSprayPaintID[playerNum][global.playerCharacter[playerNum]];
		
		if ((global.shaders) and (currentSprayPaint != 0)) pal_swap_set(global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[currentSprayPaint].sprite,1,false);
		draw_sprite_ext(sprite_index,image_index,x + shakeXFinal + drawXOffset,y + shakeYFinal + drawYOffset,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		if (targetHatShadowSprite != undefined) draw_sprite_ext(targetHatShadowSprite,image_index,x + shakeXFinal + drawXOffset,y + shakeYFinal + drawYOffset,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		if ((global.shaders) and (currentSprayPaint != 0)) pal_swap_reset();
		
		if (targetRodSprite != undefined) draw_sprite_ext(targetRodSprite,image_index,x + shakeXFinal + drawXOffset,y + shakeYFinal + drawYOffset,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		
		if (targetHatSprite != undefined) draw_sprite_ext(targetHatSprite,image_index,x + shakeXFinal + drawXOffset,y + shakeYFinal + drawYOffset,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	}
	#endregion
}