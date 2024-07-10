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



func _on_sosis_pressed():
	salah.show()
	replay.show()


func _on_gummy_pressed():
	salah.show()
	replay.show()


func _on_melon_pressed():
	benar.show()
	next.show()


func _on_replay_pressed():
	get_tree().change_scene_to_file("res://2-5 tahun/anak2-5.5.tscn")

func _on_lanjut_pressed():
	get_tree().change_scene_to_file("res://2-5 tahun/anak2-5.6.tscn")
