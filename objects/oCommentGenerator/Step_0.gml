if(active)
{
	//Generate a new comment after 'duration' frames have passed
	if(frames++ > duration)
	{
		//The chance of an inappropriate comment appearing is affected by the current score
		if(global.score < 6)
		{
			var _badChance = 0
		}
		else if (global.score < 20)
		{
			var _badChance = 20
		}
		else
		{
			var _badChance = 33
		}
		instance_create_depth(-128, irandom_range(240,288),0,oComment,{inappropriate: irandom(100) < _badChance ? true : false})
		frames = 0
		//Reduce duration based on stream progress, no less than minDuration
		duration = max(ceil(maxDuration - (3*global.progress)),minDuration)
	}
}