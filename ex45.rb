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
				return :times
			when "devide"
				puts "you have choose devide operation "
				return :devide
			when "add"
				puts "you have choose addition operation"
				return :add	
			when "substract"
				puts "you have choose subtraction operation"
				return :substract
			when "exit"
				puts "have a nice day"
				return :exit	
			else
				puts "invalid operation"
				return :lobby
			end

					

	end	

	def times()
		first = rand(9)+1
		second = rand(9)+1
		result = "%s" % [first*second]
		puts "#{first} times #{second} equal to "
		prompt()		
		answer = gets.chomp()
		attempt = 0
		
		while answer != result and attempt <10
			puts "wrong, try again!!!"
			attempt +=1
			prompt()
			answer = gets.chomp()
		end
			
		if answer == result 
			puts "you are right"
			return :lobby
		else
			puts "you have fail to answer this question"
			return :game_over
		end	
	end

	def devide()
		first = rand(9)+1
		second = rand(9)+1
		result = "%s" % [first / second]
		puts "#{first} devide by #{second} equal to"
		prompt()
		answer = gets.chomp()
		attempt = 0
		
		while answer != result and attempt <10
			puts "wrong, try again!!!"
			attempt +=1
			prompt()
			answer = gets.chomp()
		end
			
		if answer == result 
			puts "you are right"
			return :lobby
		else
			puts "you have fail to answer this question"
			return :game_over
		end			
	end

	def add()
		first = rand(9)+1
		second = rand(9)+1
		result = "%s" % [first + second]
		puts "#{first} add #{second} equal to"
		prompt()
		answer = gets.chomp()
		attempt = 0
		
		while answer != result and attempt <10
			puts "wrong, try again!!!"
			attempt +=1
			prompt()
			answer = gets.chomp()
		end
			
		if answer == result 
			puts "you are right"
			return :lobby
		else
			puts "you have fail to answer this question"
			return :game_over
		end	
	end

	def substract()
		first = rand(9)+1
		second = rand(9)+1
		result = "%s" % [first - second]
		puts "#{first} substract #{second} equal to"
		prompt()
		answer = gets.chomp()
		attempt = 0
		
		while answer != result and attempt <10
			puts "wrong, try again!!!"
			attempt +=1
			prompt()
			answer = gets.chomp()
		end
			
		if answer == result 
			puts "you are right"
			return :lobby
		else
			puts "you have fail to answer this question"
			return :game_over
		end			
	end	

	def exit()
		Process.exit(1)
	end	 	

end



