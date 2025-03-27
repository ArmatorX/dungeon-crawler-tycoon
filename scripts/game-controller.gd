@icon("res://dev/godot-icons/node_2D/icon_gear.png")
extends Node2D

# TODO: Change this for an enum paired with Custom Data Layers 
# in the TileSet
const TILE_WALL_ATLAS_COORD := Vector2i(8, 7)
const TILE_FLOOR_ATLAS_COORD := Vector2i(9, 7)

var tile_map_layer: TileMapLayer
var marker: Node2D

func _ready() -> void:
	tile_map_layer = get_node("../TilemapLayers/TileMapLayer")
	marker = get_node("../TilemapLayers/Marker")

func _process(_delta: float) -> void:
	if Input.is_action_pressed("select_target"):
		var selected_tile_position = tile_map_layer.map_to_local(marker.position)
		
		if tile_map_layer.get_cell_atlas_coords(selected_tile_position) == TILE_WALL_ATLAS_COORD:
			tile_map_layer.set_cell(selected_tile_position, )
	
