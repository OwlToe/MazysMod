enum COMMENT_SPEED {
	SLOW = 3,
	FAST = 4,
	SUPERFAST = 6
}

//Generates random username ("user" followed by 4 random numbers)
username = $"user{string_format(irandom(4000),4,0)}"
username = string_replace_all(username," ","0")

//Choosing text for the comment
if(inappropriate)
{
	text = "%&$#*!@#** *!%&$#*!@#! **%&$#*!@#"
}
else
{
	text = global.commentArray[irandom(array_length(global.commentArray)-1)]
}
shot = false //Determines whether the player shot the comment

//For tutorial comments, set speed to 0
if(test)
{
	hspeed = 0
}
else
{
	hspeed = irandom_range(3,5)
}