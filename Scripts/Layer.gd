extends Node
class_name Layer




static func create(chunk_size: int):
	chunk_size = chunk_size
	
	var front_layer = preload("res://Scenes/Layer.tscn").instance()
	front_layer.init(chunk_size)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func init(chunk_size: int):
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

