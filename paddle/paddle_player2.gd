extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	for i in get_overlapping_areas():
		if i.is_in_group("Ball"):
			i.vect.x=-3
	var y1 = Input.get_action_strength("player2_goingup")*8
	var y2 = Input.get_action_strength("player2_goingdown")*8
	var y3 = position.y-y1+y2
	if y3 > -2&&y3<610:
		position.y=position.y-y1+y2
