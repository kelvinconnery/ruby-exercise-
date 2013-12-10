def dirt_road()
	puts "As you drive up the dirt road, you realize that there is a tree in the middle of the road."
	puts "Should you go left, or should you go right?"

	while true
		prompt()
		next_move = gets.chomp()
		if next_move =="left"
			puts "You have driven into a sinkhole"
			return :dead
		elsif next_move == "right"
			puts "you may continue to the house"
			return :arrive_at_house
		else
			puts "I don\'t know which way you want to go."
		end
	end
end			
				