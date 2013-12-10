require "dirt_road.rb"
require "arrive_at_house.rb"
require "side_entrance.rb"
require "parlor_room.rb"
require "artifact_room.rb"
require "dead.rb"
require "take_a_break.rb"
require "prompt.rb"

class Game
	def initialize(start)
		@quips = [
			"Game Over!",
			"Pushing Daisies",
			"Sucks to be you!",
			"End of the road!"
		]
		@start = start
		puts "in init @start = " + @start.inspect
	end

	def	play()
		puts "@start => " + @start.inspect
		next_room = @start
		while true
			puts "\n-------"
			room = method(next_room)
			next_room = room.call()
		end
	end

	def start()
		puts <<MESSAGE
There is a haunted house up the road.
There is beleived to be an artifact of great value in the house...
But you will risk life and limb to get it!
Will you go and explore the house?
		MESSAGE

		prompt()
		action = gets.chomp()

		if action =="yes"
			return :dirt_road
		elsif  action == "no"
			puts "Ah well, maybe we'll play again someday."
			Process.exit(0)
		else
			return :dead
		end
	end
end

a_game = Game.new(:start)
a_game.play()				
										