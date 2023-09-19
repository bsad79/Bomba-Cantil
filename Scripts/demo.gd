extends Level

var enemy_scene = preload("res://Scenes/enemy_1.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	pass # Replace with function body.

func _on_timer_timeout():
	DialogueManager.show_example_dialogue_balloon(load("res://main.dialogue"), "start")
	#next_lvl = "res://Scenes/Boss_2.tscn"
	next_lvl = "res://Scenes/Intro.tscn"
	
	add_player(94, 581)
	add_door(1105, 570)
	add_ui()
	var enemy = enemy_scene.instantiate()
	
	enemy.position = Vector2(1000, 581)
	add_child(enemy)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
