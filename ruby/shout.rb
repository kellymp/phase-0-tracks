#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + ":("
#	end

#	def self.yelling_happily(words)
#		words + "!!!!!!" + " :)"
#	end
#end

#p Shout.yelling_happily("HELLOOOOOOO WOOOOORRRRLLLLD")
#p Shout.yell_angrily("I am very tired")

module Shout
	def yell(words)
		puts "I FEEL SO #{words}!!!!"
	end
end

class Positive_emotion
	include Shout
end

class Negative_emotion
	include Shout
end

positive_emotion = Positive_emotion.new
positive_emotion.yell("ALIVE")

negative_emotion = Negative_emotion.new
negative_emotion.yell("DEAD INSIDE")