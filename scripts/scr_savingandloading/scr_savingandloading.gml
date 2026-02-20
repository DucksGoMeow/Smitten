function save_game() {
	var _file = file_text_open_write("savefile.txt");
	
	file_text_write_real(_file, global.whatLevel);
	
	file_text_close(_file);
}

function load_game() {
	if (file_exists("savefile.txt")) {
		var _file = file_text_open_read("savefile.txt");
		
		global.whatLevel = file_text_read_real(_file);
		
		file_text_close(_file);
	}
}