class Santa
	def initialize(gender, ethnicity)
		puts "Initializing santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
end

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("sugar")
santa.eat_milk_and_cookies("peppermint chocolate chip")

#add empty array and add a lot of santa instances
santas = []
santas << Santa.new('agender', 'black')
santas << Santa.new('female', 'Latino')
santas << Santa.new('bigender', 'white')
santas << Santa.new('male', 'Japanese')
santas << Santa.new('female', 'prefer not to say')
santas << Santa.new('gender fluid', 'Mystical Creature (unicorn)')
santas << Santa.new('N/A', 'N/A')
