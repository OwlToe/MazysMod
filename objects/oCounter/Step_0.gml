//When counter fades out completely, destroy it
alpha -= 0.02

if(alpha <= 0)
{
	instance_destroy()
}
//counter slowly moves upward
y -= 1