extends Control



func _on_btn_calc_pressed() -> void:
	var numWeight = int($txtWeight.text)
	var numSize = int($txtHeight.text) * int($txtLength.text) * int($txtWidth.text)
	if numSize > 100000 and numWeight > 27:
		$lblOut.text = "too big and to heavy"
	elif numWeight > 27:
		$lblOut.text = "too heavy."
	elif numSize > 100000:
		$lblOut.text = "too big"
	

func _on_btn_clear_pressed() -> void:
	$lblOut.text = ""
	$txtHeight.text = ""
	$txtLength.text = ""
	$txtWeight.text = ""
	$txtWidth.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
