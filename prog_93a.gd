extends Control



func _on_btn_calc_pressed() -> void:
	var Kilo = int($txtKilo.text)
	var baseRate = Kilo * 0.0475
	var Surcharge = baseRate * .1
	var tax = baseRate * .03
	var total = float(baseRate + Surcharge + tax)
	$lblPay.text = "total: $ %.2f" % total

func _on_btn_clear_pressed() -> void:
	$lblPay.text = ""
	$txtKilo.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
