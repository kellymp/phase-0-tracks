class Santa
	def initialize(gender, ethnicity, age)
		puts "Initializing santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = age
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