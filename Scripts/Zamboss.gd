extends Enemy

func _ready():
	body = get_node("PlayerSprites")
	blow = get_node("golpe_colisao/Golpe/Sprite2D")
	timer = get_node("Timer")
	
	char_name = "Zamboss"
	damage = 20
	life = 100
	speed =250.0
	score = 1000
	def = 15
	pass
