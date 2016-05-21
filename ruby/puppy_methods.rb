class Puppy

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



