extends Control

func sayHi():
	print("Hi!")

func getArea(length, width):
	var area = length * width
	return area
	
func getPerim(length, width):
	return 2 * length + 2 * width

func _on_button_pressed():
	sayHi()
	var l = int($LineEdit.text)
	var w = int($LineEdit2.text)
	$Label3.text = "Area: " + str(getArea(l, w)) + "\nPerimeter: " + str(getPerim(l, w))
func _on_button_2_pressed():
	$Label3.text = ""
	$LineEdit.text = ""
	$LineEdit2.text = ""


func _on_button_3_pressed():
	get_tree().quit()
