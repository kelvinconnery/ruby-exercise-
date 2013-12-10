def artifact_room()
	puts "Wow,look at the box in the middle of the room?"
	puts "It looks like it may be the goal. will you open the box?"

	prompt()
	next_move = gets.chomp()

	if next_move == "yes"
		puts "There is a golden mask, and a book of remembrance?Which do you take"
		prompt()
		next_move = gets.chomp()
		if next_move == "golden mask"
			puts "your hand start to burn and you cant let go the relic. You burn to death!"
			return :dead
		elsif next_move == "book of remembrance"
			puts "you have choose wisely. the spirits are pleased!"
			puts "they will allow you clear passage out of the mansion"
			puts "well done"
			Proccess.exit(0)
		else
			puts "Not choosing angers th spirits. you shall be punished!"
			return :dead
		end
	else
		puts "Not choosing angers the spirits. You shall be punished!"
		return :dead
	end			
end				
