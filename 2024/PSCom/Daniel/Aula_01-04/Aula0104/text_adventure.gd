extends Control
var all_locations = [
	"caverna",
	"vila",
	"portal"
]
var current_location = all_locations[0]

var locations = {
	caverna = "local escuro coberto de um cheiro putrido, não consigo enxergar e parece ter pequenos [color=blue]insetos[/color] ou animais ao meu redor fugindo a cada passo que eu do, parece ter uma luz no final do tunel, será que é a [color=orange]vila?[/color]",
	vila = "Voltei para a vila de Majula, porém meu dever não acabou, peguei o caminho dos covardes, devo concluir minha missão e terminar o que comecei na [color=orange]caverna[/color] de longe vejo um [color=orange]portal[/color]",
	portal = "woooooooooooooo to caindo no portal tem um [color=blue]brilho[/color] estranho no fundo"
}

var items = {
	insetos = "Eu nunca vi eles fora da caverna, nem parecem ser desse mundo e insistem em tentar pegar o sangue que escorre do meu corpo.",
	brilho = ""
}

func _physics_process(delta):
	$Location.text = current_location

func _on_line_edit_text_submitted(new_text):
	$LineEdit.text = ""
	if new_text == "Look":
		if current_location == all_locations[0]:
			$Background/TextArea.text += locations.caverna + "\n"
		elif current_location == all_locations[1]:
			$Background/TextArea.text+= locations.vila + "\n"
		elif current_location == all_locations[2]:
			$Background/TextArea.text+= locations.portal + "\n"
		
	elif new_text == "Go to " + "vila":
		current_location = all_locations[1]
		$Background/TextArea.text = ""
	elif new_text == "Go to " + "caverna":
		current_location = all_locations[0]
		$Background/TextArea.text = ""
	elif new_text == "Go to " + "portal":
		current_location = all_locations[2]
		$Background/TextArea.text = ""
	elif new_text == "Check " + "insetos":
		if current_location == all_locations[0]:
			$Background/TextArea.text += items.insetos + "\n"
	elif new_text == "Check " + "brilho":
		if current_location == all_locations[2]:
			get_tree().change_scene_to_file("res://text_adventure2.tscn")
		
		
	
