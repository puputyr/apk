extends Node2D
@onready var benar = $Control/benar
@onready var salah = $Control/salah
@onready var replay = $Control/TouchScreenButton7/replay
@onready var next = $Control/TouchScreenButton7/lanjut
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	pass # Replace with function body.


func _on_touch_screen_button_2_released():
	benar.show()


func _on_susupu_pressed():
	salah.show()
	replay.show()



func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://6 bulan/6Bulan1.2.tscn")


func _on_susuc_pressed():
	salah.show()
	replay.show()


func _on_susubayi_pressed():
	benar.show()
	next.show()


func _on_yogurt_pressed():
	salah.show()
	replay.show()


func _on_susuk_pressed():
	salah.show()
	replay.show()


func _on_susup_pressed():
	salah.show()
	replay.show()
