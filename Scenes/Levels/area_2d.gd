extends Area2D

@export var damage := 10
@export var damage_interval := 0.5

var player_inside = false

func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _process(delta):
	if player_inside:
		# ทำดาเมจตามเวลา
		pass

func _on_body_entered(body):
	if body is Player:
		player_inside = true

func _on_body_exited(body):
	if body is Player:
		player_inside = false
