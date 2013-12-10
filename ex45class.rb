class Operation

	def first()
	 	@first = rand(9)+1
	end

	def second()
		@second = rand(9)+1
	end	
	 	
end	

class Times < Operation

	def result
		puts "the first number is #{first}"
		puts "the second number is #{second}"
		puts "the result form the multiplication is...."
		@result = "%s" % [@first * @second]
				
	end	

	def input
		@answer = gets.chomp()
		if @answer == @result
			puts "you win"
		else 
			puts "you lose"
		end	 
	end		
end

class Add < Operation

	def result
		puts "the first number is #{first}"
		puts "the second number is #{second}"
		puts "the result form the addition is...."
		@result = "%s" % [@first + @second]
		
		
	end	

	def input
		@answer = gets.chomp()
		if @answer == @result
			puts "you win"
		else 
			puts "you lose"
		end	 
	end	
end

class Devide < Operation

	def result
		puts "the first number is #{first}"
		puts "the second number is #{second}"
		puts "the result form the division is...."
		@result = "%s" % [@first / @second]

	end	

	def input
		@answer = gets.chomp()
		if @answer == @result
			puts "you win"
		else 
			puts "you lose"
		end	 
	end	
end

class Substract < Operation

	def result
		puts "the first number is #{first}"
		puts "the second number is #{second}"
		puts "the result form the substraction is...."
		@result = "%s" % [@first - @second]
	end	

	def input
		@answer = gets.chomp()
		if @answer == @result
			puts "you win"
		else 
			puts "you lose"
		end	 
	end	
end	



