if(active)
{
	//Mazy's head bobs up and down every 40 frames
	if(frames++ >= duration)
	{
		frames = 0
		if(yBob == 0)
		{
			yBob = 2
		}
		else
		{
			yBob = 0
		}
	}
}