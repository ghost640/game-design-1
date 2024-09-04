extends Control





func _on_btn_show_pressed() -> void:
	$Label.text = "My favorite subject is welding."


func _on_btn_clear_pressed() -> void:
	$Label.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
