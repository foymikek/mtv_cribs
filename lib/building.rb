class Building
  attr_reader :units, :renters
  def initialize
    @units = []
    @renters = []
  end

  def add_unit(new_unit)
    @units << new_unit
  end

  def add_units_renter(unit)
    @renters << unit.renter.name
  end
end
