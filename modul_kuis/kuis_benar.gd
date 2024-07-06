extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()
	$sound.play()
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_timer_timeout():
	get_tree().change_scene_to_file("res://modul_kuis/kuis.tscn")
	queue_free()
	pass # Replace with function body.
