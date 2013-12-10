def parlor_room()
	puts "This looks to the main parlor."
	puts "Notice the hole in front of the front dore. BEst not walk there again."
	puts "A stairscase leads upstairs and a door is in the far corner of the room."
	puts "will you take staircase or open the door"
	door_open =false

	while true
		prompt()
		next_move = gets.chomp()

		if next_move == "take the stairs"
			puts "The stairs give way and you crash throught the floor, falling into the basement"
			return :dead
		elsif next_move == "open the door" and not door_open
			puts "the door opens. It looks to be a room with artifacts. will you enter the room?"
			door_open = true
		elsif next_move == "take the stairs" and door_open
			puts "the banister break and sends you tumbling. you break your neck!"
			return :dead
		elsif next_move == "enter the room" and door_open
			return :artifact_room
		else 
			puts "i got no idea what that means"
		end
	end			
end					
					