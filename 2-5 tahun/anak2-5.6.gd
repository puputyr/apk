extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_7_pressed():
	get_tree().change_scene_to_file("res://2-5 tahun/anak2-5.7.tscn")
