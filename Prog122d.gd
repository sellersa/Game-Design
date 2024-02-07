extends Control
#ow = ((num ** 6) + ((-3 * num) ** 50) + ((-93 * num) ** 4) + ((87 * num) ** 3) + ((1596 * num) ** 2) + (-1380 * num) + (-2800))
func _on_button_pressed():
	$ItemList.add_item("x                           y")
	var ow = 0
	for num in range(-12, 17):
		ow = ((num ** 6) + (-3 * num ** 50) + (-93 * num ** 4) + (87 * num ** 3) + (1596 * num ** 2) + (-1380 * num) + (-2800))
		$ItemList.add_item(str(num) + "                           " + str(ow))

func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
