require_relative 'state_data'

class VirusPredictor
  
  # Set up class instance, initializing instance variables
  # state_of_origin, population_density, and population

  def initialize(state_of_origin ,population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  
  # Compute the effects of the virus: predicted deaths and the speed
  # of the spread of the virus.
  
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private

  
  # Calculate people lost according to the attributes of the state.  

  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
        
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


  # Calculate how fast the virus is expected to spread across the state.  

  def speed_of_spread#(population_density, state) #in months
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

    puts " and the virus will spread across the state in #{speed} months.\n\n"

  end
  
end

#=======================================================================

# DRIVER CODE

# Loop through each state in the STATE_DATA hash and output a virus effects report.
STATE_DATA.each_key do |state|
  state_report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state_report.virus_effects
end


#Reflection
=begin

- What are the differences between the two different hash syntaxes shown in the state_data file?

  The difference is in how the hash entries are written.  Normally a hash entry has the
  form

  <key> => <value>

  e.g.

  "Alabama" => "Birmingham"

  This is the form used for the outer hash.

  But, if your keys are symbols, you can use the shortcut

  key: value

  for each entry.  E.g.

  alabama: "Birmingham"

  This is the format used for the inner hash.


- What does require_relative do? How is it different from require?

  require_relative loads the given file from the path specified inline
  as part of the filename, which is a relative path, relative to the location
  of the current source file.

  require loads the specified file, looking first in the current directory,
  then looking in turn in each of the diretories listed in the environments
  PATH variable.

- What are some ways to iterate through a hash?

  Hash#each
  Hash#each_with_index
  Hash#each_with_key
  Hash#each_with_value

  Since hashes have indices, you could also use for and while loops.

- When refactoring virus_effects, what stood out to you about the variables, if anything?

  They were descriptive.

- What concept did you most solidify in this challenge?

  How to routinely access interior values in a nested data structure.

=end