class Game

	def initialize(start)
		@quips = [
			"you have lose in this game !!",
			"try again next time",
			"you should  study harder."
		]
		@start = start
	end


	def prompt()
		print "-->>> "
	end
	
	def play()
		next_room = @start

		while true
			puts "\n===================="
			room = method(next_room)
			next_room = room.call()
		end	
	end

	def game_over()
		puts @quips[rand(@quips.length())]
		Process.exit(1)
	end

	def lobby()
		puts "You have reach the lobby of huge house"
		puts "there are many room in the house"
		puts "which way you want to go?"

		prompt()
		action = gets.chomp()

		case action
			when "east"
				puts "there is no way to go in east"
				return :game_over
			when "west"
				puts "you have reach a dead end "
				return :game_over
			when "south"
				puts "there is nothing in the south"
				return :game_over	
			when "north"
				puts "you have choose a right decision"
				return :jackpot_room
			when "exit"
				puts "have a nice day"
				return :exit	
			else
				puts "invalid operation"
				return :lobby
			end

	end	

	def jackpot_room()
		puts "this is jackpot room"
		puts "but there is many room to choose "
		puts "please "
	end	


	def exit()
		Process.exit(1)
	end	 	

end



