extends Control

# Called when the node enters       the scene tree for the first time.
func _ready():
	get_node("Timer").start()
	get_node("AnimationPlayer").play("flash")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://Scenes/Boss_2.tscn")
	pass # Replace with function body.
