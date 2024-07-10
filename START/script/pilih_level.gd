extends Node2D
@export var currrent_level :int

var level = [
	{
		"level":1,
		"status": "unlock",
		"scene": "",
	},
	{
		"level":2,
		"status": "unlock",
		"scene": "",
	},
	{
		"level":3,
		"status": "lock",
		"scene": "",
	},
	{
		"level":4,
		"status": "lock",
		"scene": "",
	},
	{
		"level":5,
		"status": "lock",
		"scene": "",
	}
]
# Called when the node enters the scene tree for the first time.
func _ready():
	currrent_level = Global.level_bulan 
	$next_level.visible = true
	$previous_level.visible = true
	if currrent_level == 0:
		$previous_level.visible = false
	if currrent_level == level.size() -1 :
		$next_level.visible = false
	if level[currrent_level].status == "unlock":
			$level/surat.texture = load("res://scene/asset/level_unlock.png")
	else:
		$level/surat.texture = load("res://scene/asset/level_lock.png")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_previous_level_pressed():
	print("ditekan ges")
	Global.level_bulan = currrent_level - 1
	get_tree().change_scene_to_file("res://scene/pilih_level.tscn")
	pass # Replace with function body.
	pass # Replace with function body.


func _on_next_level_pressed():
	print("ditekan ges")
	Global.level_bulan = currrent_level + 1
	get_tree().change_scene_to_file("res://scene/pilih_level.tscn")
	pass # Replace with function body.
