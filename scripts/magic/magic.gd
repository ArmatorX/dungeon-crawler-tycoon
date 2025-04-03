@icon("res://dev/godot-icons/node_2D/icon_star.png")
class_name Magic
extends Node2D

@export var MAX_MAGIC: float
## Time (in seconds) it takes to regenerate one `regeneration_amount` of magic.
@export var REGENERATION_TIME: float
## The amount an entity will regenerate of magic after `regeneration_time`.
@export var REGENERATION_AMOUNT: float
## The spell list of this magic user.
var spells: Dictionary[StringName, Spell]

var magic: float
var _regeneration_delta: float = 0

func _ready() -> void:
	_init_magic()
	_init_spells()

func _process(delta: float) -> void:
	_process_magic_regeneration(delta)
	
func _init_spells():
	var children = get_children()
	for child in children:
		if child is Spell:
			spells[child.name] = child
	
func _init_magic() -> void:
	magic = MAX_MAGIC

## `_process` but for magic regeneration.
func _process_magic_regeneration(delta: float) -> void:
	_regeneration_delta += delta
	if _regeneration_delta >= REGENERATION_TIME:
		_regeneration_delta -= REGENERATION_TIME
		if magic + REGENERATION_AMOUNT < MAX_MAGIC:
			magic += REGENERATION_AMOUNT
		else:
			magic = MAX_MAGIC

func cast_spell_by_name(spell_name: StringName, target=null) -> void:
	if spells.has(spell_name):
		_cast_spell(spells[spell_name], target)
	else:
		push_error("Entity doesn't have spell %s." % spell_name)

func _cast_spell(spell: Spell, target=null) -> void:
	if (_can_cast_spell(spell)):
		if spell.cast(target):
			magic -= spell.MAGIC_COST

func _can_cast_spell(spell: Spell) -> bool: 
	return magic >= spell.MAGIC_COST
