extends Control



func _on_button_pressed():
	$ItemList.add_item("Hours      Pay")
	for num in range(1, 40+1):
		var this = num * 4
		var answer = str(num) + "               " + str(this)
		$ItemList.add_item(answer)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()







