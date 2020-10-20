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
end
