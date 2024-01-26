extends Control



func _on_button_pressed():
	var diameter = float($LineEdit.text)
	var pi = 3.14159265
	var radius = diameter / 2
	var circumference = pi * diameter
	var area = pi * radius ** 2
	$Label5.text = str(radius)
	$Label6.text = str(area)
	$Label7.text = str(circumference)
func _on_button_2_pressed():
	$Label5.text = ""
	$Label6.text = ""
	$Label7.text = ""
	$LineEdit.text = ""


func _on_button_3_pressed():
	get_tree().quit()
