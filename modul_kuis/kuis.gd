extends Node2D
@export var  current_kuis :int

var kuis = [
	{
		"soal":"res://modul_kuis/asset/soal_1/soal_1.png",
		"pil_1": "res://modul_kuis/asset/soal_1/soal_1_pil_1.png",
		"pil_2": "res://modul_kuis/asset/soal_1/soal_1_pil_2.png",
		"pil_3": "res://modul_kuis/asset/soal_1/soal_1_pil_3.png",
		"kunci_jawaban":"pil_1"
	},
	{
		"soal":"res://modul_kuis/asset/soal_2/soal_2.png",
		"pil_1": "res://modul_kuis/asset/soal_2/soal_2_pil_1.png",
		"pil_2": "res://modul_kuis/asset/soal_2/soal_2_pil_2.png",
		"pil_3": "res://modul_kuis/asset/soal_2/soal_2_pil_3.png",
		"kunci_jawaban":"pil_2"
	},
	{
		"soal":"res://modul_kuis/asset/soal_3/soal_3.png",
		"pil_1": "res://modul_kuis/asset/soal_3/soal_3_pil_1.png",
		"pil_2": "res://modul_kuis/asset/soal_3/soal_3_pil_2.png",
		"pil_3": "res://modul_kuis/asset/soal_3/soal_3_pil_3.png",
		"kunci_jawaban":"pil_3"
	},
	{
		"soal":"res://modul_kuis/asset/soal_4/soal_4.png",
		"pil_1": "res://modul_kuis/asset/soal_4/soal_4_pil_1.png",
		"pil_2":"res://modul_kuis/asset/soal_4/soal_4_pil_2.png",
		"pil_3":"res://modul_kuis/asset/soal_4/soal_4_pil_3.png",
		"kunci_jawaban":"pil_2"
	}
]

var scene_benar = preload("res://modul_kuis/kuis_benar.tscn")
var scene_salah = preload("res://modul_kuis/kuis_salah.tscn")

func _ready():
	current_kuis = Global.kuis_level 
	if current_kuis < kuis.size():
		$"soal".texture = load(kuis[current_kuis].soal)
		$"pil-1".icon = load(kuis[current_kuis].pil_1)
		$"pil-2".icon = load(kuis[current_kuis].pil_2)
		$"pil-3".icon =load( kuis[current_kuis].pil_3)
	else:
		#ini tuntuk mengubah scene jika udah mentok atau selesai kuis haib
		print("selesai")
	pass
	


func _process(delta):
	pass


func _on_btnhome_pressed():
	pass #ini untuk mengubah tombol home kemana


func _on_pil_1_pressed():
	jawaban("pil_1")


func _on_pil_2_pressed():
	jawaban("pil_2")

func _on_pil_3_pressed():
	jawaban("pil_3")

func jawaban(pilihan):
	if pilihan == kuis[current_kuis]["kunci_jawaban"]:
		$"pil-1".disabled = true
		$"pil-2".disabled = true
		$"pil-3".disabled = true 
		Global.kuis_level = current_kuis + 1
		var scene = scene_benar.instantiate()
		$checklist.add_child(scene)
		
	else:
		var scene = scene_salah.instantiate()
		$checklist.add_child(scene) 


func _on_btnback_pressed():
	if current_kuis != 0:
		Global.kuis_level = current_kuis - 1
		get_tree().change_scene_to_file("res://modul_kuis/kuis.tscn")
	pass 

