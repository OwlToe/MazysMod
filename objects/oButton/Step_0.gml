//Flash when the reticle hovers over the button
if(instance_exists(oReticle) and oReticle.activeButton == id)
{
	image_index = 1
}
else
{
	image_index = 0
}