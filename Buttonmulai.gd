extends Button

func _input(event):
	if (event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT) or event is InputEventScreenTouch and event.pressed :
		
			get_tree().change_scene_to_file("res://intro.tscn")
func _on_touch_screenmulai_pressed():
	pass # Replace with function body.
