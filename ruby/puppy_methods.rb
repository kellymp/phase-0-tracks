class Puppy
  
  def initialize
  	puts "Initializing new puppy instance..." 
  end	

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
  	puts 'Woof' * times
  end

  def roll_over
  	puts '*rolls over*'
  end

  def dog_years(human_years)
  	p human_years.to_i * 7
  end

  def shake
  	puts '*puts paw out to shake*'
  end

end

Lola = Puppy.new
Lola.fetch('ball')
Lola.speak(6)
Lola.roll_over
Lola.dog_years(5)
Lola.shake

#Release 2: Write your own

class Duck

	def initialize
		puts "Initializing new duck method..."
	end

	def waddle
		puts '*waddle waddle*' 
	end

	def quack(times)
		puts '*Quack!*' * times
	end

end

#create array to store new instance of duck class
ducks = []
i = 0

#create loop to make 50 instances of duck class
while i < 50
	ducks << Duck.new
	i += 1
end

#iterate over the duck array
ducks.each do |duck| 
	p duck.waddle
	p duck.quack(4)
end

