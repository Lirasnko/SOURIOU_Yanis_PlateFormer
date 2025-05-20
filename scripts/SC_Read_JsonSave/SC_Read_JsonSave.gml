function SC_Read_JsonSave() {
	if (file_exists("local_save.json")) {
		var file = file_text_open_read("local_save.json");
		var json = "";
		while (!file_text_eof(file)) {
		    json += file_text_readln(file);
		}
		file_text_close(file);
		
		return(json);
	}
}