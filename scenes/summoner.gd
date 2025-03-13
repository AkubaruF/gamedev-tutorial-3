extends Sprite2D

@export var sound: AudioStreamPlayer2D
@export var treeGroup: Node
@export var sound1: AudioStreamWAV
@export var sound2: AudioStreamWAV
@export var background: Sprite2D
var counter = 0

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		if counter % 2 == 1:
			sound.stream = sound1
			background.visible = false
		else:
			sound.stream = sound2
			background.visible = true
		for i in treeGroup.get_children():
			i.visible = true
		counter += 1
