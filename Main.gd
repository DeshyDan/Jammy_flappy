extends Node2D

@export var bird: Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Jammy Flappy")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_bird_terminated():
	print("Your buttschicks have fallen off")
	remove_child(bird)
	pass # Replace with function body.
