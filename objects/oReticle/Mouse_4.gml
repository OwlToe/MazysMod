//Create gun effect
instance_create_depth(x,y,depth+1,oShot)

with(instance_place(x,y,oComment))
{
	//Only shoot comments that haven't already been shot
	if(not shot)
	{
		shot = true
		//Increase score if comment is inappropriate, reduce it otherwise
		if(inappropriate)
		{
			if(not test)
			{
				global.score++
				instance_create_depth(x,y,depth,oCounter,{value: 1})
			}
		}
		else
		{
			if(not test)
			{
				global.score = max(0,global.score-global.penalty)
				instance_create_depth(x,y,depth,oCounter,{value: -global.penalty})
			}
		}
		//Gives comment falling effect as it fades away
		hspeed = random_range(-2,2)
		vspeed = -5
		gravity = 0.5
	}
}
//Clicking buttons
if(activeButton != noone)
{
	with(activeButton)
	{
		script_execute_ext(script,args)
	}
}