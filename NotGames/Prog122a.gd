extends Control



func _on_button_pressed():
	$ItemList.add_item("Number     Square     Square Root")
	for num in range (1, 50+1):
		var squared = num ** 2
		var squarert = sqrt(num)
		var line = str(num) + "     " + str(squared) + "     " + str(squarert)
		$ItemList.add_item(line)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()







