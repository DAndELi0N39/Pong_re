extends Area2D

#创建变量
var vect:Vector2=Vector2(3,3) #vector2表示2维向量
var init_position

# Called when the node enters the scene tree for the first time.
func _ready():
	self.add_to_group("Ball") #将小球加入ball group，为一个标签
	init_position=position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position=position+vect
	if position.x>600:
		self.reset()
	pass

func reset(): 
	if vect.x>0:
		Credit.score_1=Credit.score_1+1
	else :
		Credit.score_2=Credit.score_2+1
	position=init_position
