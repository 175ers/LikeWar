# Example of creating a list of player structs:

import random

def createIP ():
	return str(random.randint(0, 256)) + "." + str(random.randint(0, 256)) + "." + str(random.randint(0, 256))

random.seed(0)


players = []

# We will have 2 teams, team 0 and team 1. The team value will intially be set to -1 before a player has joined a team
for i in range(10):
	players.append({"ip":createIP(), "name":("player" + str(i)), "numTugs":0, "team":-1})

print(players)

# We can increment each player's number of tugs
players[0]['numTugs'] = players[0]['numTugs'] + 1

print(players[0]['numTugs'])


