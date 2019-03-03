extends TouchScreenButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var pressedCount = 0

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	print("TouchScreenButton's _ready() called!")
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass




func _on_TouchScreenButton_pressed():
	pressedCount += 1
	print ("TouchScreenButton pressed " + str(pressedCount) + " times!  ")
