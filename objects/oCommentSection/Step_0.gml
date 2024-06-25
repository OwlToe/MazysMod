//Only save the last four comments
if(array_length(comments) > 4)
{
	array_delete(comments,0,1)
}