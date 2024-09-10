extends Control



func _on_btn_calc_pressed() -> void:
	var a = int($txtA.text)
	var b = int($txtB.text)
	var c = int($txtC.text)
	

func _on_btn_clear_pressed() -> void:
	$txtA.text = ""
	$txtB.text = ""
	$txtC.text = ""
	$lblRoot.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
