#create scooter class
#create attributes: color, scooter name, fuel level
#create methods:
# initailize  
# speed up method that takes an integer (speed) as its arguments
# honk method that honks the number of times specified by the arguments
# slam on the breaks method 

class Scooter

	attr_accessor :color, :name
	attr_reader :motor_size, :brand

#initialize class and add attributes
	def initialize(color,scooter_name)
		@color = color
		@name = scooter_name
		@motor = "turbo charged"
		@brand = "Vespa"
	end

#method for speeding up the vespa
	def speed_up(speed)
		puts "Vrooom! The Vespa is now going #{speed} mph!"
	end

#method for honking the horn
	def honk(times)
		puts "Honk! " * times
	end

#method for slamming on the breaks
	def slam_breaks
		puts "SQEEEEEEEEEEEE! The Vespa has stopped!"
	end

#method for printing out the details of the users creation
	def product_details
		puts "Your #{@brand} scooter named #{@name} is #{@color} with a #{@motor} engine!"
	end
end


#add user interface 
puts "Welcome to the factory! Lets build your scooter!"

#create array to store instances
vespas = []

#create loop until user chooses to exit
preference = ' '
while preference != "exit"
	puts "What color would you like to paint your scooter?"
	color = gets.chomp

	puts "What would you like to name your scooter?"
	name = gets.chomp

	scooter = Scooter.new(color, name)
	vespas << scooter

	puts "Would you like to build another scooter? Type 'exit' if you are done."
	preference = gets.chomp
end 

#print out the attributes of each instance
vespas.each do |scooter|
	scooter.product_details
	puts "lets go for a test drive!"
	speed = rand(70)
	times = rand(7)
	scooter.speed_up(speed)
	scooter.honk(times)
	scooter.slam_breaks
end

puts "Thanks for choosing the Vespa factory! Drive safe!"

