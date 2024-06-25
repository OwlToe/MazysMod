if(not test)
{
	//Adding comment to the chat when it meets the comment section
	if(place_meeting(x,y,oCommentSection))
	{
		with(oCommentSection)
		{
			array_push(comments,{username: other.username, text: other.text})
		}
		//Increase score if comment is normal
		if(not inappropriate)
		{
			global.score++
			instance_create_depth(x,y,-999,oCounter,{value: 1})
		}
		//Reduce score if comment is offensive
		else
		{
			global.score = max(0, global.score-global.penalty)
			instance_create_depth(x,y,-999,oCounter,{value: -global.penalty})
		}
		instance_destroy()
	}
}

//Comment fades out when shot
if(shot)
{
	image_alpha-=0.05
	if(image_alpha <= 0)
	{
		instance_destroy()
	}
}