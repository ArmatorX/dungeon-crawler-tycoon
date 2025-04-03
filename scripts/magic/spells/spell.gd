@icon("res://dev/godot-icons/node_2D/icon_star.png")
class_name Spell
extends Node

@export var MAGIC_COST: float

### This creates the specific child of the Spell class, instead of the generic
### Spell.
#static func New(args: Dictionary):
	#return load(args['path_to_script']).new(args)
#
#func _init(args: Dictionary):
	#magic_cost = args['magic_cost']

## This methods has the logic of what the spell does.
## It returns true if the casting was successful, false otherwise.
func cast(target=null) -> bool:
	push_error("Method not implemented.")
	return true
