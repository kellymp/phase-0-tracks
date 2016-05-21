class Santa

	def initialize
		puts "Initializing Santa instance..."
	end

	def speak
		puts 'Ho, ho, ho! Haaaappy holidays!'
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

end

#driver code to test out Santa class
Jolly = Santa.new
Jolly.speak
Jolly.eat_milk_and_cookies('sugar')
