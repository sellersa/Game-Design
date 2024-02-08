extends Control



func _on_button_pressed():
	var square = 0
	var squareroot = 0
	var cube = 0
	var fourth = 0
	var answer = ""
	$ItemList.add_item("Number       Square       Square Root       Cube       Fourth Root")
	for num in range(1, 21):
		square = num ** 2
		squareroot = num ** 0.5
		cube = num ** 3
		fourth = num ** 0.25
		answer = str(num) + "         " + str(square) + "         " + str(squareroot) + "         " + str(cube) + "         " + str(fourth)
		$ItemList.add_item(answer)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
