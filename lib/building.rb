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

  def rented_units
    @units.select do |unit|
      unit.renter != nil
    end
  end

  def renter_with_highest_rent
    unit = rented_units.max_by do |unit|
      unit.monthly_rent
    end
    unit.renter
  end
end
