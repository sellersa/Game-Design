extends Control


func _on_btn_calc_pressed():
	var length = int($Length.text)
	var width = int($Width.text)
	var area = length * width
	var perim = 2 * length + 2 * width
	$lblArea.text = "Area: " + str(area)
	$lblPerimeter.text = "Perimeter: " + str(perim)
	# Operators: + - * /    ** pow
	# str - string (text)
	# int - integer (whole number)
	# float - floating-point number (w/ decimal)

func _on_btn_clear_pressed():
	$Length.text = ""
	$Width.text = ""
	$lblArea.text = ""
	$lblPerimeter.text = ""


func _on_btn_close_pressed():
	get_tree().quit()
