json.game_data do	
	json.id @game['id'] 
	json.score @game['score']
	json.min @game['min']
	json.max @game['max']
	json.turkID @game['turkID']
	json.SLA @game['SLA']
	json.avg @game['avg']
	json.norm @game['norm']
	json.timestart @game['timestart']
	json.timefinish @game['timefinish']
	json.duration @game['duration']
	json.seed @game['seed']
	json.playerID @game['playerID']
	json.gamenumber @game['gamenumber']
	json.ramp @game['ramp']
	json.limits @game['limits']
	json.pushes @game['pushes']
	json.cashed @game['cashed']
	json.stamps @game['stamps']
end