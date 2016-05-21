class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

Lola = Puppy.new
Lola.fetch('ball')


