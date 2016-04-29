#create vespa class
#create attributes: color, scooter name, motor size
#create methods:
# initailize  
# speed up method that takes an integer (speed) as its arguments
# honk method that honks the number of times specified by the arguments
# slam on the breaks method 

class Vespa

#initialize class and add attributes
	def initialize(color,scooter_name)
		@color = color
		@name = scooter_name
		@motor_size = motor_size
	end

#method for speeding up the vespa
	def speed_up(speed)
		puts "Vrooom! The Vespa is now going #{speed}mph!"
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

p Vespa.speed_up(40)
p Vespa.honk(5)
p Vespa.slam_breaks