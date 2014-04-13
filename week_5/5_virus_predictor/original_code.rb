# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].

# EXPLANATION OF require_relative
#requires the information in state_data.rb to be accessed by this file
#
require_relative 'state_data'

class VirusPredictor
  #initialize the VirusPredictor and creates instance methods for the parameters
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  def state
    @state
  end

  def population
    @population
  end

  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state, @region, @next_region)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method

  def predicted_deaths(population_density, population, state)
    if @population_density < 50
      number_of_deaths = (@population * 0.05).floor
    else
      number_of_deaths = (@population_density * (0.1 * (@population / 50)) ).floor
    end

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else 
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state, region, next_region) #in months
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

    puts " and will spread across the #{@state} in #{speed} months.  #{@state} is in region #{@region} and the spread will continue onto region #{@next_region} if it is not contained.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
# alaska.virus_effects

x = 0
while x < STATE_DATA.count
    report = VirusPredictor.new(STATE_DATA.keys[x], STATE_DATA.values[x].values[0], STATE_DATA.values[x].values[1], STATE_DATA.values[x].values[2], STATE_DATA.values[x].values[3]) 
    puts report.virus_effects
    x += 1
end

y = 0
while y < STATE_DATA.count
    pop = VirusPredictor.new(STATE_DATA.keys[y], STATE_DATA.values[y].values[0], STATE_DATA.values[y].values[1], STATE_DATA.values[y].values[2], STATE_DATA.values[y].values[3]) 

    puts "The population of #{pop.state} is #{pop.population}."
    y += 1
end
