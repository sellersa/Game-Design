extends Control



func _on_button_pressed():
	var v1 = []
	var v2 = []
	var v3 = []
	var v4 = []
	for num in range(2, 10+1, 2):
		v1.append(str(num))
	for nub in range(3, 11+1, 2):
		v2.append(str(nub))
	for nug in range(4, 20+1, 4):
		v3.append(str(nug))
	for nus in range(2, 10+1, 2):
		v4.append(str(nus ** 2))
	var h1 = [v1[0], v2[0], v3[0], v4[0]]
	var h2 = [v1[1], v2[1], v3[1], v4[1]]
	var h3 = [v1[2], v2[2], v3[2], v4[2]]
	var h4 = [v1[3], v2[3], v3[3], v4[3]]
	var h5 = [v1[4], v2[4], v3[4], v4[4]]
	$ItemList.add_item(str(h1))
	$ItemList.add_item(str(h2))
	$ItemList.add_item(str(h3))
	$ItemList.add_item(str(h4))
	$ItemList.add_item(str(h5))
func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
