// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveGame(){
	var _saveData = {
		highScore : global.highScore
	}
	
	var _string = json_stringify(_saveData)
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1)
	buffer_write(_buffer, buffer_string, _string)
	buffer_save(_buffer,"save.sav")
	buffer_delete(_buffer)

	show_debug_message("Game saved! " + _string)
}

function LoadGame(){
	if(file_exists("save.sav"))
	{
		var _buffer = buffer_load("save.sav")
		var _string = buffer_read(_buffer, buffer_string)
		buffer_delete(_buffer)
	
		show_debug_message("Game loaded! " + _string)
	
		var _loadData = json_parse(_string)
		global.highScore = _loadData.highScore
		
		return true
	}
	else
	{
		show_debug_message("No save data available")
		return false
	}
	
}

function DeleteSavedGame(){
	file_delete("save.sav")
	show_debug_message("File " + string("save.sav") + " successfully deleted.")
}

function ClearScore(){
	global.highScore = 0
	DeleteSavedGame()
	room_goto(rTitle)
}