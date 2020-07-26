extends Node

var dict = {}

func _ready():
	var file = File.new()
	file.open("res://scripts/JSONs/testing.json",file.READ)
	var text = file.get_as_text()
	dict = JSON.parse(text).result
	file.close()
	#print(dict["greet"])
	$Label.text = dict["greet"]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
