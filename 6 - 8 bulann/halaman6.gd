extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	


func _on_next_to_info_gizi_pressed():
	get_tree().change_scene_to_file("res://halaman7.tscn")
	pass # Replace with function body.
