def prompt
	print "> "
end

puts "you enter a dark room with two doors. do you go through door #1 or door #2?"

prompt; door = gets.chomp
if door == "1"
	puts "there's a giant bear here eating a cheese cake. what do you do?"
	puts "1. take the cake."
	puts "2. scream at the bear."

	prompt; bear=gets.chomp

	if bear=="1"
		puts "the bear eats your face off. Good job!"
	elsif bear == "2"
		puts "the bear eats your legs off. Good job!"
	else
		puts "well, doint #{bear} is probably better. Bear runs away."
	end
	
elsif door =="2"
	puts "you stare into the darkness abyyss at Cthuhlu's retina."
	puts "1. Blueberries."
	puts "2. Yellow jacket clothnespins"
	puts "3. understanding resolvers yelling melodies"

	prompt; insanity = gets.chomp

	if insanity == "1" or insanity =="2"
		puts "your body survives powered by a mind of jello. good job!"
	else
		puts "the insanity rots your eyes into a pool of muck. good job!"
	end
	
else 
	puts "you stumble around and fall on a knife and die. good job!"
end				

				