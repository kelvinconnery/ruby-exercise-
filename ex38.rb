ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "wait there's not 10 things in that list, let's fix that."

stuff = ten_things.split(' ')
more_stuff = %w(Day night Song Frisbee Corn Banana Girl Boy)

while stuff.length != 10
	next_one = more_stuff.pop()
	puts "Adding: #{next_one}"
	stuff.push(next_one)
	puts "there's #{stuff.length} item now"
end

puts "There we go : #{stuff}"

puts "lets do some thing with stuff"

puts stuff[1]
puts stuff[-1] # whoa! fancy
puts stuff.pop()
puts stuff.join(' ') #what ? cool!	
puts stuff.values_at(3,5).join('#') #super stellar!