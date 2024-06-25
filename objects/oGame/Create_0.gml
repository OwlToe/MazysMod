//Enlarge window and center it
window_set_size(RESOLUTION_W*2,RESOLUTION_H*2)
window_center()
randomize()
//Global variables
global.score = 4 //aka "Viewers"
global.progress = 0 //Determines how much of the stream is left, in percent
global.totalPoints = 0 //Number of oMapPoint + oCheese objects (cheese is a child of oMapPoint)
global.penalty = 1 //Point loss for shooting good comments or missing bad ones
global.gameroom = false //Whether the current room is for gameplay or not(i.e. a menu or title screen)
global.highScore = 0 //Self explanatory
global.gameOver = false //Whether the game has ended
LoadGame() //Load the saved high score data