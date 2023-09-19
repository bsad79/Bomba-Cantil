extends Node2D
class_name Level

var player_scene = preload("res://Scenes/player.tscn")
var door_scene = preload("res://Scenes/Door.tscn")
var ui_scene = preload("res://Scenes/ui.tscn")
var next_lvl

var transition_scene = preload("res://Scenes/Transition.tscn")
var transition
var wait = false

# Called when the node enters the scene tree for the first time.
func _ready():
	transition = transition_scene.instantiate()
	transition.position = Vector2(0, 0)
	add_child(transition)
	get_node("Control/ColorRect").visible = false
	level_start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func add_door(x, y):
	var door = door_scene.instantiate()
	door.position = Vector2(x, y)
	add_child(door)
	pass

func add_ui():
	var ui = ui_scene.instantiate()
	ui.position = Vector2(0, 0)
	add_child(ui)
	pass

func add_player(x, y):
	var player = player_scene.instantiate()
	player.position = Vector2(x, y)
	add_child(player)
	pass
	
func level_start():
	get_node("Timer").start()
	wait = true
	get_node("Control/ColorRect").visible = true
	get_node("AnimationPlayer").play("fade in")
	pass
	
func level_end():
	get_node("Timer").start()
	wait = true
	get_node("Control/ColorRect").visible = true
	get_node("AnimationPlayer").play("fade  out")
	pass


func _on_timer_timeout():
	wait = false
	_ready()
	pass # Replace with function body.
