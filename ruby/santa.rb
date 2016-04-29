class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender


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

	def celebrate_birthday(current_age)
		@age += 1
	end

	def get_mad_at(reindeer)
		current_ranking = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.insert(-1, reindeer)
		@reindeer_ranking.delete_at(current_ranking)
	end

#setter method
#	def gender=(new_gender)
#		@gender = new_gender
#	end

#Getter methods
#	def age
#		@age
#	end

#	def ethnicity
#		@ethnicity
#	end

end
#santa = []
#santa = Santa.new(@gender, @ethnicity)
#santa.speak
#santa.eat_milk_and_cookies("sugar")
#santa.eat_milk_and_cookies("peppermint chocolate chip")
#santa.get_mad_at("Rudolph")
#p @reindeer_ranking

#add empty array and add a lot of santa instances
#santas = []
#santas << Santa.new('agender', 'black')
#santas << Santa.new('female', 'Latino')
#santas << Santa.new('bigender', 'white')
#santas << Santa.new('male', 'Japanese')
#santas << Santa.new('female', 'prefer not to say')
#santas << Santa.new('gender fluid', 'Mystical Creature (unicorn)')
#santas << Santa.new('N/A', 'N/A')

#add some diverse initializations
santas = []
example_genders = ["agender", "female", "male", "bigender", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Chinese", "Mystical Creature (unicorn)", "pacific islander", "black"]
example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
end

200.times do 
	 santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	 age = rand(140)
	 puts "This is a #{age} year old, #{santa.ethnicity} #{santa.gender} Santa "
end


