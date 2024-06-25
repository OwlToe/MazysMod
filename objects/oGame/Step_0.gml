if(global.gameroom)
{
	//Pausing the game
	keyPause = keyboard_check_pressed(vk_escape)
	if(not global.gameOver)
	{
		//Pausing
		if(keyPause)
		{
			//with(oPause)
			with(oPause)
			{
				trigger = true
			}
		}
	}
	//Calculating stream progress
	global.progress = floor(100 * (global.totalPoints - instance_number(oMapPoint))/global.totalPoints)
	//Score penalty is proportional to progress
	global.penalty = max(ceil((global.progress/200)*50),1)

	//Lose condition (zero viewers)
	if(global.score <= 0)
	{
		//Disable frame-based objects
		with(oCommentGenerator)
		{
			active = false
		}
		with(oMouse)
		{
			active = false
		}
		//Get rid of comments
		with(oComment)
		{
			if(not shot)
			{
				shot = true
				//Applies falling effect
				hspeed = random_range(-2,2)
				vspeed = -5
				gravity = 0.5
			}
		}
		//create losing end screen
		if(not instance_exists(oEndScreen))
		{
			instance_create_depth(0,0,-999,oEndScreen,{win: false})
		}
	}

	//Win condition (progress complete)
	else if (global.progress >= 100)
	{
		//Disable frame-based objects
		with(oCommentGenerator)
		{
			active = false
		}
		with(oMouse)
		{
			active = false
		}
		//Get rid of comments
		with(oComment)
		{
			if(not shot)
			{
				shot = true
				//Applies falling effect
				hspeed = random_range(-2,2)
				vspeed = -5
				gravity = 0.5
			}
		}
		//create winning end screen
		if(not instance_exists(oEndScreen))
		{
			instance_create_depth(0,0,-999,oEndScreen,{win: true})
			if(global.score > global.highScore)
			{
				global.highScore = global.score
				SaveGame()
			}
		}
	}
}
