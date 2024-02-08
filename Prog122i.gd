extends Control



func _on_button_pressed():
	var cube = 0
	var otherone = 0
	$ItemList.add_item("Number       Cube Root       Cube")
	for num in range(-25, 26):
		cube = num ** 3
		if num < 0:
			otherone = abs(num) ** 0.33333333
			otherone *= -1
		else:
			otherone = num ** 0.33333333
		$ItemList.add_item(str(num) + "       " + str(otherone) + "        " + str(cube))


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
