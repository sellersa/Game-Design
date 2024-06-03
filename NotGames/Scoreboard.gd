extends Control

var score = 0

func addPoint(): score += 1
func subPoint(): score -= 1
func reset(): score = 0

func update():
	$Label2.text = "Score: " + str(score)

func _on_button_pressed():
	var choice = $LineEdit.text.to_lower()
	if choice == "add":
		addPoint()
	elif choice == "sub" or choice == "subtract":
		subPoint()
	else:
		OS.alert("Invalid choice!")
	update()

func _on_button_2_pressed():
	reset()
	update()


