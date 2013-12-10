name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair ='Brown'

puts "let's talk about %s." %name
puts "He's %.2f inches tall."% height
puts "he's %f pounds heavy."% weight
puts "Actually that's not too heavy."
puts "he's got %s eyes and %s hair." % [eyes, hair]
puts "his teeth are usually %s depending on the coffee." % teeth

#this line is tricky, try to get it exactly right
puts "If I add %d, %d and %d I get %d." % [age, height, weight , age+height+weight]
