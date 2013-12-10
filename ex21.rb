def add(a,b)
	puts "ADDING #{a} + #{b}"
	a+b
end

def substract(a,b)
	puts "SUBSTRACTING #{a} - #{b}"
	a-b	
end

def multiply (a,b)
	puts "MULTIPLYING #{a} * #{b}"
	a*b
end

def divide(a,b)
	puts "DIVIDING #{a} / #{b}"
	a /b
end

puts "let's do some math with just functions!"

age= add(30,5)
height = substract(78,4)
weight = multiply(90,2)
iq = divide(100,2)

puts "Age: #{age}, Height : #{height}, weight: #{weight}, IQ: #{iq}"

#a puzzle for the extra credit, type it in anyway
puts "Here is puzzle."

what = add(age,substract(height,multiply(weight,divide(iq,2))))

puts "That become: #{what} can you do it by hand?"			