function SC_Write_JsonSave(save, checkpointNum, checkpoint) {
	//var json_str_base = "{\"starter\" : {\"startX\" : 0,\"startY\" : 0},\"saves\" : {\"save1\" : {\"date\" : \"DD/MM/YYYY\",\"checkpoint\" : 0,\"startX\" : 0,\"startY\" : 0},\"save2\" : {\"date\" : \"DD/MM/YYYY\",\"checkpoint\" : 0,\"startX\" : 0,\"startY\" : 0},\"save3\" : {\"date\" : \"DD/MM/YYYY\",\"checkpoint\" : 0,\"startX\" : 0,\"startY\" : 0}}}";
	var json_str = SC_Read_JsonSave();
	var json_data = json_parse(json_str);
	if (file_exists("local_save.json")) {
		var file = file_text_open_write("local_save.json");
		file_text_write_string(file, json_str);
		file_text_close(file);
	}
	show_debug_message(SC_Read_JsonSave());
}