require "minitest/autorun"
require "minitest/pride"
require './lib/renter'

class RenterTest < Minitest::Test
  def test_it_has_attirbutes
    renter1 = Renter.new("Jessie")
    assert_equal "Jessie", renter1.name 
  end
end
