#create a mapping of state to abbreviation
states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'California' => 'CA',
	'New York' => 'NY',
	'Michigan' => 'MI'
}

#create a basic set of states adn some cities in them
cities ={
	'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'
}

#add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

#puts put some cities
puts '-' * 10
puts "NY state has: ", cities['NY']
puts "OR state has: ", cities['OR']

#puts some states
puts '-' * 10
puts "Michigan's abbreviation is: ",states['Michigan']
puts "Florida's abbreviation is: ",states['Florida']

#do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: ",cities[states['Michigan']]
puts "Florida has: ",cities[states['Michigan']]

#puts every state abbreviation
puts '-' * 10
for abbrev, city in cities
	puts "%s state in abbreviated %s"% [abbrev,city]
end

#now do both at the same time 
puts '-' *10
for state, abbrev in states
	puts "%s state is abbreviated %s and has city %s"%[state,abbrev,cities[abbrev]]
end

puts '-' *10
#id it's not there you get nil
state = states['Texas']

if not state
	puts "sorry, no texas."
end

#get a city with a default value
city = cities['TX'] || 'Does Not Exist'
puts "The city for the state 'TX' is %s" % city	

