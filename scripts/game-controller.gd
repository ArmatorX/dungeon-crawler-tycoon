@icon("res://dev/godot-icons/node_2D/icon_gear.png")
extends Node2D

enum TileType {
	FLOOR = 1,
	WALL,
}

var tile_map_layer: TileMapLayer
var marker: Node2D

func _ready() -> void:
	tile_map_layer = get_node("../TilemapLayers/TileMapLayer")
	marker = get_node("../TilemapLayers/Marker")

func _process(_delta: float) -> void:
	if Input.is_action_pressed("select_target"):
		var selected_tile_position := tile_map_layer.local_to_map(marker.position)
		var tile_data := tile_map_layer.get_cell_tile_data(selected_tile_position)
		
		if not tile_data:
			return
		
		var cell_type: int = tile_data.get_custom_data("Type")
		
		if cell_type == TileType.WALL:
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
