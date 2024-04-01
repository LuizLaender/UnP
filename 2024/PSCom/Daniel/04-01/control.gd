extends Control

# [] é usado para arrays
var all_locations = [
	"caverna",
	"vila"
]

var current_location = all_locations [0]

# [color=red]texto com cor[/color]
# {} é ultilizado para dicionarios
var locations = {
	caverna ="Local escuro coberto de um cheiro putrido, não consigo enxergar e parece ter pequenos [color=blue]insetos[/color] ou animais ao meu redor fugindo a cada passo que eu dou, parece ter uma luz no final do tunel, sera que é a [color=orange]vila?[/color]",
	vila = "Voltei para a vila de Majula, porém meu dever nçao acabou, peguei o caminho dos covardes, devo concluir minha missão e terminar o que comecei na [color=orange]caverna[/color]"
}

var itens = { 
	insetos = "Eu nunca vi eles fora da caverna, nem parecem ser desse mundo e insistem em tentar pegar o sangue que escorre do meu corpo."	
}

# função que faz com que tudo que esteja dentro dela rode a cada frame
func _physics_process(delta):
	$Location.text = current_location


#  recebe oq o jogador digitar
func _on_line_edit_text_submitted(new_text):
	$LineEdit.text = ""
	if new_text == "Look":
		if  current_location == all_locations[0]:
			$Background/TextArea.text += locations.caverna + "\n"
		elif current_location == all_locations[1]:
			$Background/TextArea.text += locations.vila + "\n"
	elif new_text == "Go To " + "vila":
		current_location = all_locations[1]
		$Background/TextArea.text = ""

#fazer um "log" onde td q o usuario digitou apareca na tela
