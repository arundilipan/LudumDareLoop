extends LoopTile


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (bool) var enabled = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func change_orientation(event):
	if event is InputEventMouseButton and Input.is_action_just_released("click"):
		if enabled:
		
			if orientation + 1 > 6:
				# code here trigger a signal to remove from scene
				enabled = false
				$VisibilityEnabler2D.process_parent = enabled

			else: 
				orientation = orientation + 1
		else:
			enabled = true
			$VisibilityEnabler2D.process_parent = enabled
			orientation = HORIZONTAL
			
		emit_signal("orientation_changed", self)
