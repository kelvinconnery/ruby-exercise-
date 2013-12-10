## Animal is-a object look at the extra credit
class Animal
end

## Dog inherit animal
class Dog < Animal

	def initialize(name)
		## initialize name
		@name = name
	end
end

## car inherit animal
class Cat < Animal

	def initialize(name)
		## initialize name for cat
		@name = name
	end
end

## create class person
class Person

	def initialize(name)
		##  initialize name
		@name = name

		## persin has-a pet of some kind
		@pet = nil
	end
	
	attr_accessor :pet
end	

## Employee inherit person
class Employee < Person

	def initialize(name, salary)
		## initialize name and salary in employee class
		super(name)
		## follow the initialization on name in person class
		@salary = salary
	end

end

## create fish class
class Fish
end

## salmon inherit fish
class Salmon < Fish
end

## halibut inherit fish
class Halibut < Fish
end

## rover is-a dog
rover = Dog.new("Rover")

## satan is a cat
satan = Cat.new("Satan")

## mary is a person
mary = Person.new("Mary")

## set mary pet to satan
mary.pet = satan

## set frank attribute as an employee
frank = Employee.new("Frank", 120000)

## set rover to frank pet
frank.pet = rover

## set flipper as a dog
flipper = Fish.new()

## set crouse as a salmon
crouse = Salmon.new()

## set harry a a halibut
harry= Halibut.new()			
