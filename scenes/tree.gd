extends AnimatedSprite2D

@onready var audioStream = $AudioStreamPlayer2D

func _ready() -> void:
	play("default")

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player" and visible == true:
		audioStream.play()
		await audioStream.finished
		visible = false
