function ResetStats(){
	global.score = 4
	global.progress = 0
	global.totalPoints = 0
	global.gameOver = false
	global.penalty = 1
}

function ResetLevel(){
	ResetStats()
	global.gameroom = true
	instance_activate_all()
	room_goto(rMain)
}

function ReturnToTitle(){
	ResetStats()
	global.gameroom = false
	instance_activate_all()
	room_goto(rTitle)
}