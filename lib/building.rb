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

  def units_by_number_of_bedrooms
    unit_by_bedrooms = Hash.new {|hash, key| hash[key] = []}
    @units.each do |unit|
      unit_by_bedrooms[unit.bedrooms] << unit.number
    end
    unit_by_bedrooms
  end

  def annual_breakdown
    annual_report = Hash.new {|hash, key| hash[key] = 0}
    rented_units.each do |unit|
      annual_report[unit.renter.name] = (unit.monthly_rent * 12)
    end
    annual_report
  end

  def rooms_by_renter
    rooms_by_renter_list = Hash.new {|hash, key| hash[key] = {}}
    rented_units.each do |unit|
      rooms_by_renter_list[unit.renter.name][:bathrooms] = unit.bathrooms
      rooms_by_renter_list[unit.renter.name][:bedrooms] = unit.bedrooms
    end
    rooms_by_renter_list
  end
end
