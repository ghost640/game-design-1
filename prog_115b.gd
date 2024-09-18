extends Control





func _on_btn_calc_pressed() -> void:
	for num in range(2, 36+1, 2):
		var line = "%d " % [num]
		$Label.text = line


func _on_btn_clear_pressed() -> void:
	$Label.text =""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
