#create vespa class
#create attributes: color, scooter name, motor size
#create methods:
# initailize  
# speed up method that takes an integer (speed) as its arguments
# honk method that honks the number of times specified by the arguments
# slam on the breaks method 

class Vespa

	attr_accessor 
	attr_reader 

#initialize class and add attributes
	def initialize(color,scooter_name)
		@color = color
		@name = scooter_name
		@motor_size = motor_size
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
end


#add user interface 
#ask user how many vespas they would like to test drive to create loop
puts "How many Vespas would you like to test drive?"
test_drives = gets.chomp

test_drives.times do 
end



