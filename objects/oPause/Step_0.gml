if(pause)
{
	keyPause = keyboard_check_pressed(vk_escape)
	
	if(keyPause)
	{
		trigger = true
	}
}

if(trigger)
{
	trigger = false
	//Pause game
	if(not pause)
	{
		pause = true
		
		//deactivate all other instances
		instance_deactivate_all(true)
		instance_activate_object(oReticle)

		with(instance_create_depth(RESOLUTION_W/2,RESOLUTION_H/2,depth-1,oButtonMenu))
		{
			buttons = [{text: "Try Again", script: ResetLevel, args: []}, {text: "Main Menu", script: game_restart, args: []}]
			other.menuID = id
		}

	}
	
	//Unpause game
	else
	{
		pause = false
		instance_activate_all()
		if(menuID != -1)
		{
			instance_destroy(menuID,true)
			menuID = -1
		}
	}
}