extends Control





func _on_btn_show_pressed() -> void:
	$Label.text = "My name is Blake Raddatz."


func _on_btn_clear_pressed() -> void:
	$Label.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
