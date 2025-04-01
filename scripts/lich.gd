@icon("res://dev/godot-icons/node_2D/icon_character.png")
extends Node2D
class_name Lich

## Amount of magic regenerated per second
@export var MAGIC_REGENERATION_SPEED: float = 2.5
@export var MAX_MAGIC: float = 100

var magic: float
var time_since_last_regeneration: float

func _ready() -> void:
	magic = MAX_MAGIC
	time_since_last_regeneration = 0

func _process(delta: float) -> void:
	_regenerate_magic(delta)

func _regenerate_magic(delta: float) -> void:
	# There's a trade-off to be made here
	# I think the speed is right
	# But I am yet to decide whether I want magic to regenerate in little chunks
	# or big chunks
	# The difference would be that in one, you can slowly keep building very 
	# slowly, at grind pace, while the other would force you to do other stuff
	# while waiting
	time_since_last_regeneration += delta
	if time_since_last_regeneration > 1:
		time_since_last_regeneration -= 1
		if magic + MAGIC_REGENERATION_SPEED <= MAX_MAGIC:
			magic += MAGIC_REGENERATION_SPEED
		elif magic != MAX_MAGIC:
			magic = MAX_MAGIC
