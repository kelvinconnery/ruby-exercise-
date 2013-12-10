def side_entrance()
	puts "you have entered the side side entrance"
	puts "this look to be a servant's quarters"
	puts "across the room is a doorway. In the corner there is a wardrobe."
	puts "Do you want to open the door or open the wardrobe?"
	while true
		prompt()
		next_move = gets.chomp()
		if next_move == "open the wardrobe"
			puts "a ghostly hand grabs you and pulls you into the wardrobe"
			puts "you fall head first through a hole in the wardrobe."
			puts "you plunge into the basement filled with the water. "
			puts "bummer, there's no way out of the basement.Drowning sucks!"
			return :dead
		elsif next_move == "open the door"
			puts "good choice. you may continue"
			return :parlor_room
		else
			puts "I don\'t know which way you want to go."
		end	
	end	
end
