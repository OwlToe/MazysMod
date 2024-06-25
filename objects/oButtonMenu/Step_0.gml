if(not buttonsMade)
{
	buttonsMade = true //To ensure this code only runs once
	for(var _i=0; _i < array_length(buttons); _i++)
	{
		with (instance_create_depth(x,y+_i*32+16,depth,oButton,buttons[_i]))
		{
			text = other.buttons[_i].text
			script = other.buttons[_i].script
			args = other.buttons[_i].args
			
			array_push(other.buttonID, id)
		}
	}
}