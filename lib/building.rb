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

  def average_rent
    total = 0
    @units.each do |unit|
      total += unit.monthly_rent
    end
    total / (@units.count).to_f
  end
end
