extends Node

var highscore : int
var current_score : int

func gameover():
	if highscore > current_score:
		current_score = 0
	else:
		highscore = current_score
		current_score = 0
