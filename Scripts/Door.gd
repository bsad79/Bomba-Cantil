extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func play_transition():
	pass

func _on_body_entered(body):
	if (body.name == "Personagem"):
		get_parent().get_parent().level_end()
		#get_node("Timer").wait_time = get_parent().get_parent().get_node("Timer").wait_time
		get_node("Timer").start()
	pass # Replace with function body.


func _on_timer_timeout():
	get_tree().change_scene_to_file(get_parent().get_parent().next_lvl)
	pass # Replace with function body.
