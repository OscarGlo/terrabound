extends Generator
class_name ChunkLayer

var chunks: Dictionary #<Vector2, Chunk>
var map_generator: MapGenerator
var chunk_size: int



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _init(filepath: String):
	var seed_val = 1
	var chunkSize = 20
	
	map_generator = MapGenerator.new(seed_val)
	
	var palette = [] #TileData Array
	var map_front: Dictionary = Dictionary() # <Vector2, int> key : (posX, posY) -> ID_palette
	var map_back: Dictionary = Dictionary() # <Vector2, int> key : (posX, posY) -> ID_palette
	
	
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
