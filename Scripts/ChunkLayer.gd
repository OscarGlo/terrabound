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


func saveTile(pos: Vector2, tile: Tile):
	var chunk_pos: Vector2 = VectorUtil.modulo(pos, chunk_size)
	if (chunks.has(chunk_pos)):
		chunks[chunk_pos] = Chunk(chunk_size, chunk_pos, mapGenerator, [], Dictionnary(), Dictionnary())
	chunks[chunk_pos].saveTiles(tile, pos)

func getChunk(pos: Vector2):
	if (not chunks.has(pos)):
		return Chunk(chunk_size, pos, MapGenerator)
	return chunks[pos]

func getTile(pos: Vector2):
	var chunk_pos: Vector2 = Vector2(pos.x / chunk_size, pos.y / chunk_size).round()
	
	if (notchunks.has(chunk_pos)):
		chunks.add(chunk_pos,
		Chunk(chunk_size, chunk_pos, mapGenerator, [], Dictionary(), Dictionary())) #new List<TileData>(), new Dictionary<Vector2, int>(),new Dictionary<Vector2, int>()
	
	return chunks[chunk_pos].getTile(VectorUtil.modulo(pos, chunk_size), 0)
