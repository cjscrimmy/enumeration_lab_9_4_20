class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def get_planets_count
    return @planets.count
  end

  def planet_names
    return @planets.map {|planet| planet.name}
  end

  def get_planet_by_name(planet_to_find)
    found_planet = @planets.find do |planet|
       planet.name == planet_to_find
    end
    return found_planet
  end 

  def get_largest_planet
   return @planets.max_by {|planet| planet.diameter}
  end
  
end
