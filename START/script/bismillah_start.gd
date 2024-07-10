extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	AudioPlayer.play_music_level()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_touch_screenmulai_released():
	get_tree().change_scene_to_file("res://START/scene/intro.tscn")
	pass # Replace with function body.


func _on_touch_screenquiz_released():
	get_tree().change_scene_to_file("res://modul_kuis/kuis.tscn")
	pass # Replace with function body.


func _on_buttonmulai_pressed():
	get_tree().change_scene_to_file("res://START/scene/intro.tscn")
