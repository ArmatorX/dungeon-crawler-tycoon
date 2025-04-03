class_name LayoutMap
extends TileMapLayer

@onready var marker: Node2D = get_node("../Marker") # Child Node2D

func _process(_delta: float):
	var mouse_pos = get_local_mouse_position()
	var cell_pos = local_to_map(mouse_pos)
	highlight_cell(cell_pos)

func highlight_cell(coords: Vector2i):
	marker.position = map_to_local(coords)

## Gets the 9x9 area around a cell, including the cell.
func get_adyacent_cells(coords: Vector2i) -> Array[Vector2i]:
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
	
## Gets the 9x9 area around the marker, including the cell of the marker.
func get_adyacent_cells_from_marker() -> Array[Vector2i]: 
	return get_adyacent_cells(get_coords_from_marker())
	
func get_coords_from_marker() -> Vector2i:
	return local_to_map(marker.position)

func _get_tile_data_from_marker() -> TileData:
	var selected_tile_position := get_coords_from_marker()
	return get_cell_tile_data(selected_tile_position)

func _get_tile_data_from_position(target_position: Vector2) -> TileData:
	var selected_tile_position := local_to_map(target_position)
	return get_cell_tile_data(selected_tile_position)
	
func get_cell_type_from_marker() -> Enums.TileType:
	var tile_data := _get_tile_data_from_marker()
	return _get_cell_type(tile_data)

func get_cell_type_from_position(target_position: Vector2) -> Enums.TileType:
	var tile_data := _get_tile_data_from_position(target_position)
	return _get_cell_type(tile_data)
	
func _get_cell_type(tile_data: TileData) -> Enums.TileType:
	if not tile_data:
		return Enums.TileType.EMPTY
	
	return tile_data.get_custom_data("Type") as Enums.TileType
