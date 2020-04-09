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
end
