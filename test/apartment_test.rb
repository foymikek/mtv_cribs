require "minitest/autorun"
require "minitest/pride"
require './lib/renter'
require "./lib/apartment"

class ApartmentTest < Minitest::Test
  def test_it_has_attirbutes
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal "A1", unit1.number
    assert_equal 1200, unit1.monthly_rent
    assert_equal 1, unit1.bathrooms
    assert_equal 1, unit1.bedrooms
    assert_equal nil, unit1.renter
  end
end
