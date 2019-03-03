extends TouchScreenButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
	



#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_ConnectServerTouchScreenButton_pressed():
	print("Connecting to Server!")
	#var server_ip = get_tree().get_root().find_node("EnterServerIPTextEdit", true).text
	var server_ip = get_parent().get_parent().find_node("EnterServerIPTextEdit").text
	print("The server's IP is: " + str(server_ip))
	#network.join_server("player x", )
