extends Control



func _on_button_pressed():
	$ItemList.add_item("Number")
	for num in range(2, 36+1, 2):
		var line = str(num)
		$ItemList.add_item(line)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
