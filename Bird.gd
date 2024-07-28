extends Node2D

const ACC = 9.8
var speed = 3
signal terminated
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func jump():
	speed = -3
	print("James is flappig his butchicks")
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	speed += delta * ACC
	position.y += speed
	if Input.is_action_just_pressed("jump"):
		jump()
	
	if position.y > 600:
		terminated.emit()
	pass
