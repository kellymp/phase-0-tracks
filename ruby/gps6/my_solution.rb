# Virus Predictor

# I worked on this challenge [by myself, with: Ken Olson ].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#linking the input data (hash)
#require_relative requiring code from other files in program
#require - for requiring gems
require_relative 'state_data'

class VirusPredictor
# create instance variables that can be used throughout code
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# return the next two methods
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private 
  

# Charlotte's example of how cases work: 
# case temp
#   when cold
#     wear a coat
#   when hot
#     not wear a coat
#   when boiling
#     take off clothes
#   else
#     take an umbrella just in case
# end

# uses conditional statedment to declare number of death variable based on population density,
# prints number of deaths at the bottom 
  def predicted_deaths
    # predicted deaths is solely based on population density
   # if @population_density >= 200
    #  number_of_deaths = (@population * 0.4).floor
    #elsif @population_density >= 150
     # number_of_deaths = (@population * 0.3).floor
    #elsif @population_density >= 100
    #  number_of_deaths = (@population * 0.2).floor
    #elsif @population_density >= 50
     # number_of_deaths = (@population * 0.1).floor
    #else
     # number_of_deaths = (@population * 0.05).floor
    #end
    
    #use case statement to refactor code
    case @population_density
      when 1...49 
       number_of_deaths = (@population * 0.1).floor
      when 50...99
        number_of_deaths = (@population * 0.2).floor
      When 100..149
        number_of_deaths = (@population * 0.3).floor
      when 150...200
        number_of_deaths = (@population * 0.4).floor
      else
        number_of_deaths = (@population * 0.05).floor
    end

#we can remove this and have it print within virus_effects so that this method does one thing
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#uses a conditional statement to declare speed of spread based on population density.
# print result at the bottom  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

#we can remove this and have it print within virus_effects so that this method does one thing
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, pop|
state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
state.virus_effects
end
  
#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects
#
#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects
#
#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section