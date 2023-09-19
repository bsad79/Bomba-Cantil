extends Level

var boss_scene = preload("res://Scenes/Zamboss.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	pass # Replace with function body.

func _on_timer_timeout():
	next_lvl = "res://Scenes/arena.tscn"
	
	add_player(94, 581)
	add_door(1105, 570)
	add_ui()
	var boss = boss_scene.instantiate()
	
	boss.position = Vector2(1000, 581)
	add_child(boss)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
