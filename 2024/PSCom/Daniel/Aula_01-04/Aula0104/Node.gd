extends Node
var dark_souls_stream = {
	"game": "Dark Souls",
	"day": "Terça",
	"horario_de_brasilia": "10pm",
	"horario_do_hawaii": "8pm",
	"horario_da_argentina": "4pm"
}


var highscore_list = {
	"jogador1": 2345,
	"jogador2": 2345,
	"jogador3": 12,
	"jogador4": 1
}
func _ready():
	#if highscore_list.jogador1 > highscore_list.jogador2:
		#print("Jogador1 venceu com: ", highscore_list.jogador1)
	#elif highscore_list.jogador2 > highscore_list.jogador1:
		#print("Jogador2 venceu com: ", highscore_list.jogador2)
	#elif highscore_list.jogador1 == highscore_list.jogador2:
		#print("Empatou!")
	#else: print("Erro!")
	if highscore_list.has("jogador1"):
		print("Tem o jogador 1")
		
	else:
		print("jogador 1 não encontrado")
	eMaior("jogador1", "jogador2")
	
	

func eMaior(score1, score2):
	var val1 = highscore_list[score1]
	var val2 = highscore_list[score2]
	if val1>val2:
		print(score1)
	elif val1<val2:
		print(score2)
	elif val1==val2:
		print("Empatou!")
	
	
	
