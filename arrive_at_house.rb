def arrive_at_house()
	puts "Well, you've made it to the house."
	puts "There is a large double door at the front of the house"
	puts "there is also a small side door that looks to led to a small annex"
	puts "will you use the front door or the side entrance?"
	while true
		prompt()
		next_move = gets.chomp()
		if next_move == "front door"
			puts "the entry ways gives way. you plunge into the basement filled with water"
			return :dead
		elsif next_move == "side entrance"
			puts "Good choice. you may continue"
			return :side_entrance
		else		
			puts "I don\'t know which way you want to go."
		end
	end
end			