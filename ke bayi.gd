extends Node2D

var is_clicked: bool = false


func _input(event):
	if (event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT) or event is InputEventScreenTouch and event.pressed :
		if is_clicked == true:
			get_tree().change_scene_to_file("res://bayi9-11.tscn") #gantinen ke halaman selanjutnya
func _on_timer_timeout():
	is_clicked = true
