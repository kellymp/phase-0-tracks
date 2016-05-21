class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak
		puts 'Ho, ho, ho! Haaaappy holidays!'
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

#setter method
#	def gender=(new_gender)
#		@gender = new_gender
#	end

#getter method
#	def age
#		@age
#	end

#	def ethnicity
#		@ethnicity
#	end

end

#driver code to test out Santa class
#santa = Santa.new
#santa.speak
#santa.eat_milk_and_cookies('sugar')

#santas = []
#santas << Santa.new('female', 'black')
#santas << Santa.new('male', 'asian')

santas = []
example_genders = ['agender', 'female', 'bigender', 'male', 'female', 'gender fluid', 'N/A']
example_ethnicities = ['black', 'latino', 'white', 'Japanese-African', 'prefer not to say', 'Mystical Creature (unicorn)', 'N/A']

example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
end



