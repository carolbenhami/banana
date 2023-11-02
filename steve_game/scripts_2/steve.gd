extends KinematicBody

var speed = Vector3(0,0,0)
const VELOCITY = 6
const ROTSPEED = 7

func _ready():
	pass
	
func _physics_process(_delta): 
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_left"):
		speed.x=0
	elif Input.is_action_pressed("ui_right"):
		speed.x=VELOCITY
		$MeshInstance.rotate_z(deg2rad(-ROTSPEED))	
	elif Input.is_action_pressed("ui_left"):
		speed.x=-VELOCITY	
		$MeshInstance.rotate_z(deg2rad(ROTSPEED))
	else:
		speed.x=lerp(speed.x,0,0.1)
		
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		speed.z=0
	elif Input.is_action_pressed("ui_up"):
		speed.z=-VELOCITY
		$MeshInstance.rotate_x(deg2rad(-ROTSPEED))
	elif Input.is_action_pressed("ui_down"):
		speed.z=VELOCITY
		$MeshInstance.rotate_x(deg2rad(ROTSPEED))
	else:
		speed.z=lerp(speed.x,0,0.1)
	move_and_slide(speed)
	
