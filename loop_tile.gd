extends Area2D

class_name LoopTile

signal orientation_changed(tile)

# Declare member variables here. Examples:

enum Orientation {
	HORIZONTAL = 0,
	VERTICAL = 1,
	CORNER_TOP_RIGHT = 2,
	CORNER_BOTTOM_RIGHT = 3,
	CORNER_TOP_LEFT = 4,
	CORNER_BOTTOM_LEFT = 5,
}

export (int) var x = 0
export (int) var y = 0

export (Orientation) var orientation = HORIZONTAL




func show_tile(orientation):
	match orientation:
		Orientation.HORIZONTAL:
			$AnimatedSprite.animation = "horizontal"
			continue
		Orientation.VERTICAL:
			$AnimatedSprite.animation = "vertical"
			continue
		Orientation.CORNER_BOTTOM_LEFT:
			$AnimatedSprite.animation = "corner_bottom_left"
			continue
		Orientation.CORNER_TOP_LEFT:
			$AnimatedSprite.animation = "corner_top_left"
			continue
		Orientation.CORNER_TOP_RIGHT:
			$AnimatedSprite.animation = "corner_top_right"
			continue
		Orientation.CORNER_BOTTOM_RIGHT:
			$AnimatedSprite.animation = "corner_bottom_right"
			continue
		
# var b = "text"

func change_orientation(event):
	if event is InputEventMouseButton and Input.is_action_just_released("click"):
		var scaled_position = event.position / 2
		var my_rect = Rect2(position - Vector2(8, 8), Vector2(16, 16))
		
		if my_rect.has_point(scaled_position):
			orientation = (orientation + 1) % 6
			show_tile(orientation)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	change_orientation(event)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	if 
#	pass


func _on_Area2D_orientation_changed(tile):
	show_tile(tile.orientation)
