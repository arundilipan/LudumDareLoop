extends KinematicBody2D

export (int) var speed = 200

signal step_on
signal battle


var velocity = Vector2()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func get_input(): 
	var next_position = position
	if Input.is_action_just_released('right'):
		next_position.x += 64
	if Input.is_action_just_released('left'):
		next_position.x -= 64
	if Input.is_action_just_released('down'):
		next_position.y += 64
	if Input.is_action_just_released('up'):
		next_position.y -= 64
	position = next_position
	
#func _physics_process(delta):
#	get_input()
#	velocity = move_and_slide(velocity)

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input()
