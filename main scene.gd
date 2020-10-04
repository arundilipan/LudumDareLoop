extends Node2D

func G(arr): 
	return GG.arr(arr) 

const train_track = preload("res://train_track.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		
	pass

# func _input(event):
# 	if event is InputEventMouseButton:
# 		#print("Position at: ", event.position)
		
# 		if Input.is_action_just_released("click"):
# 			var track_position := Vector2(event.position.x - fmod(event.position.x, 64), event.position.y - fmod(event.position.y, 64))
# 			#print("Placing track at:", track_position)
			
# 			var all_tracks = $train_tracks.get_children()
# 			print("Existing train tracks: ", all_tracks)
			
# 			var existing_track = G(all_tracks).filter_by_fld_val("position", track_position).head_or_null()
			
# 			if existing_track == null:
# 				var train_track_instance = train_track.instance()
# 				train_track_instance.visible = true
# 				train_track_instance.position = track_position
				
# 				$train_tracks.add_child(train_track_instance, true)
# 			else:
# 				$train_tracks.remove_child(existing_track)
			
