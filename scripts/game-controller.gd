@icon("res://dev/godot-icons/node_2D/icon_gear.png")
extends Node2D

# TODO: Change this for an enum paired with Custom Data Layers 
# in the TileSet
const TILE_WALL_ATLAS_COORD := Vector2i(8, 7)
const TILE_FLOOR_ATLAS_COORD := Vector2i(3, 2)
const TILE_FLOOR_ATLAS_EMPTY := Vector2i(-1, -1)

var tile_map_layer: TileMapLayer
var marker: Node2D

func _ready() -> void:
	tile_map_layer = get_node("../TilemapLayers/TileMapLayer")
	marker = get_node("../TilemapLayers/Marker")

func _process(_delta: float) -> void:
	if Input.is_action_pressed("select_target"):
		var selected_tile_position = tile_map_layer.local_to_map(marker.position)
		
		print(tile_map_layer.get_cell_atlas_coords(selected_tile_position))
		var atlas_coords = tile_map_layer.get_cell_atlas_coords(selected_tile_position)
		
		if atlas_coords != TILE_FLOOR_ATLAS_COORD and atlas_coords != TILE_FLOOR_ATLAS_EMPTY:
			var cells := _get_adyacent_cells(selected_tile_position)
			tile_map_layer.set_cells_terrain_connect(cells, 0, 0, false)
			
func _get_adyacent_cells(coords: Vector2i) -> Array[Vector2i]:
	return [
		Vector2i(coords.x - 1, coords.y - 1),
		Vector2i(coords.x, coords.y - 1),
		Vector2i(coords.x + 1, coords.y - 1),
		Vector2i(coords.x - 1, coords.y),
		Vector2i(coords.x, coords.y),
		Vector2i(coords.x + 1, coords.y),
		Vector2i(coords.x - 1, coords.y + 1),
		Vector2i(coords.x, coords.y + 1),
		Vector2i(coords.x + 1, coords.y + 1),
	]
