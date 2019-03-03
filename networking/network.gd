extends Node

const DEFAULT_PORT = 31416
const MAX_PEERS = 10
var players = {}
var player_status

func _ready():
	# Called when the node is added to the scene for the first time.
	# High Level Networking Initialization here
	get_tree().connect("network_peer_connected", self, "_player_connected")
	get_tree().connect("network_peer_disconnected", self, "_player_disconnected")
	get_tree().connect("connected_to_server", self, "_connection_ready")
	get_tree().connect("connection_failed", self, "_connection_fail")
	get_tree().connect("server_disconnected", self, "_server_disconnect")

# Start a server
func start_server():
	player_status = 'Server'
	var host = NeworkedMultiplayerENet.new()
	var server = host.create_server(DEFAULT_PORT, MAX_PEERS)

	# if(server != ok): # If server doesnt start, join a server with IP
	# 	join_server()
	# 	return

	get_tree.set_network_peer(host)

# Join a server with specifc IP
func join_server(name, ip_address):
	player_status = name
	var host = NeworkedMultiplayerENet.new()

	host.create_client(ip_address, DEFAULT_PORT)
	get_tree().set_network_peer(host)

# Player has connected
func _player_connected(id):
	pass

func _player_disconnected(id):
	# If I am server, send a signal to inform that an player disconnected
	unregister_player(id)
	rpc("unregister_player", id)
	
	
# Successfully connected to server (client)
func _connected_ok():
	# Send signal to server that we are ready to be assigned;
	# Either to lobby or ingame
	rpc_id(1, "user_ready", get_tree().get_network_unique_id(), player_name)
	pass


	




