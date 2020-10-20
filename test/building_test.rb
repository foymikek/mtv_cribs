require "minitest/autorun"
require "minitest/pride"
require './lib/renter'
require "./lib/apartment"
require "./lib/building"

class BuildingTest < Minitest::Test
  def test_it_has_attirbutes
    building = Building.new

    assert_equal [], building.units
    assert_equal [], building.renters
  end

  def test_building_can_add_units
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    building.add_unit(unit1)
    building.add_unit(unit2)
    expected = [unit1, unit2]
    assert_equal expected, building.units
  end
end
