extends Control




func _on_btn_calc_pressed() -> void:
	var radius = float($txtRadius.text)
	var pie = float(3.14159)
	var area =  float(radius * radius * pie)
	var circum =  float(2 * pie * radius)
	$lblArea.text = "ARea: " + str(area)
	$lblCircum.text = "circumference: " + str(circum)


func _on_btn_clear_pressed() -> void:
	$txtRadius.text = ""
	$lblArea.text = ""
	$lblCircum.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
