extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().create_timer(randf_range(0,1)).timeout

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		GameManager.add_life()
		AudioManager.coin_pickup_sfx.play()
		queue_free()
