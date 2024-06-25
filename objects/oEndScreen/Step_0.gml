alpha = min(alpha+0.01,0.5)
//Create menu once screen has faded completely to 0.5 opacity
if(alpha >= 0.5)
{
	
	if(not menuOpen)
	{
		//Ensures it only creates the menu during a single frame
		menuOpen = true
		with(instance_create_depth(RESOLUTION_W/2,RESOLUTION_H/2,depth-1,oButtonMenu))
		{
			buttons = [{text: "Try Again", script: ResetLevel, args: []}, {text: "Main Menu", script: game_restart, args: []}]
		}
	}
	
}