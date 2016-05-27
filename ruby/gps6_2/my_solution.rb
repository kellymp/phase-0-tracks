# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#used for requiring code from other files in the program
#
require_relative 'state_data'

class VirusPredictor

#creates instance variables that can be used throughout the code
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#returns the following two methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

#uses conditional statement to declare the number of deaths based on population density
#prints the number of deaths at the bottom
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density 

    when 201...500
      number_of_deaths = (@population * 0.4).floor 
    when 101...200
      number_of_deaths = (@population * 0.3).floor
    when 100...199 
     number_of_deaths = (@population * 0.2).floor
    when 1...99
     number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end 
    #if @population_density >= 200
    #  number_of_deaths = (@population * 0.4).floor
    #elsif @population_density >= 150
    #  number_of_deaths = (@population * 0.3).floor
    #elsif @population_density >= 100
    #  number_of_deaths = (@population * 0.2).floor
    #elsif @population_density >= 50
    #  number_of_deaths = (@population * 0.1).floor
    #else
    #  number_of_deaths = (@population * 0.05).floor
    

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#uses a conditional statement to declare the speed of disease spread based on pop density
#prints the speed at the bottom
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    
    case @population_density
      when 201...5000
        speed += 0.5
      when 151...200
        speed += 1
      when 101...150
        speed += 1.5
      when 51...100
        speed += 2
      else 
      speed += 2.5
    end  
                
    #if @population_density >= 200
    #  speed += 0.5
    #elsif @population_density >= 150
    #  speed += 1
    #elsif @population_density >= 100
    #  speed += 1.5
    #elsif @population_density >= 50
    #  speed += 2
    #else
    #  speed += 2.5
    #end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each_key do |state_name|
  state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population]) 
  state.virus_effects
end

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#
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