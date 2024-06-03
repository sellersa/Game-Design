extends Control


func _on_button_pressed():
	$Label.text = "My name is Archer Sellers.\nI am a Freshman at Craig High School.\nI am in the class called Game Design 1."


func _on_button_2_pressed():
	$Label.text = ""


func _on_button_3_pressed():
	get_tree().quit()
