extends RigidBody3D

@export var max_speed = 10.0
@export var speed = 10.0
@export var rotSpeed = 5.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):		

	var turn = Input.get_axis("left", "right")
	
	if abs(turn) > 0:     
		
		rotation.y -= rotSpeed * delta * turn
	
	var move = Input.get_axis("reverse", "forward")
	if abs(move) > 0:     
		translate(Vector3.FORWARD * speed * move * delta)
		
	var up = Input.get_axis("down", "up")
	if up:
		translate(Vector3.UP * max_speed * up * delta)
		
