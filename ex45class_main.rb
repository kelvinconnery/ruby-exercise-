require_relative 'ex45class'

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
		next_question = @start

		while true
			puts "\n===================="
			question = method(next_question)
			next_question = question.call()
		end	
	end

	def game_over()
		puts @quips[rand(@quips.length())]
		Process.exit(1)
	end

	def lobby()
		puts "here is the math game"
		puts "choose your operation"

		prompt()
		action = gets.chomp()

		case action
			when "times"
				puts "you have choose multiplication operation"
				operation = Times.new
				operation.result()
				prompt()				
				operation.input()
				option()

			when "devide"
				puts "you have choose devide operation "
				operation = Devide.new
				operation.result()
				prompt()				
				operation.input()
				option()				

			when "add"
				puts "you have choose addition operation"
				operation = Add.new
				operation.result()
				prompt()
				operation.input()
				option()

			when "substract"
				puts "you have choose subtraction operation"
				operation = Substract.new
				operation.result()
				prompt()				
				operation.input()
				option()				

			when "exit"
				puts "have a nice day"
				return :exit	
			else
				puts "invalid operation"
				return :lobby
			end


	end	

	def option()
		puts "do you want another question? "
		puts "[yes/no]"
		prompt()
		option = gets.chomp()
		if option == "yes"
			return :lobby
		elsif option == "no"
			return :exit
		else
			puts "invalid input..."
			return :option
		end
	end		

	def exit()
		Process.exit(1)
	end	 	

end


a_game = Game.new(:lobby)
a_game.play()
