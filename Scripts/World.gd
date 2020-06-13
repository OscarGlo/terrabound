extends Node2D

export var load_size: Vector2 = Vector2(4,2)
export var chunk_size: int = 15

var loaded: bool 
var tile_size: int 

var chunkLayer: ChunkLayer
var front_layer: Layer
var back_layer: Layer


func _ready():
	chunkLayer = ChunkLayer.new("../file.txt")
	get_parent().add_child(chunkLayer)
	
	front_layer = Layer.create(chunk_size)
	get_parent().add_child(front_layer)
	
	pass 

func _process(delta):
	pass

func load():
	loadChunks()
	#Terrabound.Instance.Threads[ThreadName.WorldLoad].Run(() => {
    #	Loaded = true;
    #});
	pass

func loadChunks():
	
	var loadRadius = (load_size / 2).floor()

	var chunks = []
	#var playerChunk = ((player.Position + player.Size / 2) / (chunkSize * TileSize)).floor()
	var playerChunk = Vector2(0, 0)
	#Console.WriteLine(playerChunk.X + " |" + playerChunk.Y);

	for x in range(playerChunk.X - loadRadius.X, playerChunk.X + loadRadius.X):
		for y in range(playerChunk.Y - loadRadius.Y, playerChunk.Y + loadRadius.Y):
			chunks.push_back(Vector2(x, y))
			#Console.WriteLine(x + " |" + y)

			front_layer.UpdateChunks(chunks.ToArray(), ChunkLayer, 0);
            #back_layer.UpdateChunks(chunks.ToArray(), chunkLayer, 1);
	pass

func saveTiles(chunckPos: Vector2 , tiles: Dictionary): #*<Vector2, Tile>*#
	ChunkLayer.SaveTiles(chunckPos, tiles)
	pass

func update():
	pass
