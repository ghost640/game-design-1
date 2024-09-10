extends Control



func _on_btn_calc_pressed() -> void:
	var a = int($txtA.text)
	var b = int($txtB.text)
	var c = int($txtC.text)
	var Root1 = (-b + sqrt(b * b - 4 * a * c)) / 2 * a
	var Root2 = (-b - sqrt(b * b - 4 * a * c)) / 2 * a
	$lblRoot.text = "the roots are: " + str(Root1) + "," + str(Root2)

func _on_btn_clear_pressed() -> void:
	$txtA.text = ""
	$txtB.text = ""
	$txtC.text = ""
	$lblRoot.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
