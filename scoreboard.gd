extends Control

var score = 0

func addpoint(): score += 1
func subpoint(): score -= 1
func reset():     score = 0

func update():
	$lblOut.text = "score: %d" % score

func _on_btn_update_pressed() -> void:
	var choice = $LineEdit.text.to_lower()
	if choice == "add":
		addpoint()
	elif choice == "sub" or choice == "subtract":
		subpoint()
	else:
		OS.alert("Invalid choice!") #caital o and s
	update()


func _on_btn_reset_pressed() -> void:
	reset()
	update()
