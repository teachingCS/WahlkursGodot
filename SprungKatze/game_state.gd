extends Node

var highscore : int
var current_score : int

func gameover():
	if highscore < current_score:
		highscore = current_score
	current_score = 0
