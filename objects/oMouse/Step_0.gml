if(active)
{
	//if there is no target, calculate the new one
	if(target == noone)
	{
		target = instance_nearest(x,y,oMapPoint)
	}

	else
	{
		//Move the mouse every 10 frames
		if(tick++ > duration)
		{
			tick = 0
			if(target != noone)
			{
				x += 1 * (sign(target.x - x))
				y += 1 * (sign(target.y - y))
				
				//Once the mouse has reached its target, destroy it and calculate another one
				if(x == target.x and y == target.y)
				{
					instance_destroy(target)
					target = instance_nearest(x,y,oMapPoint)
				}
			}
		}
	}
}