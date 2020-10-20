class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter
  def initialize(data)
    @number = data[:number]
    @monthly_rent = data[:monthly_rent]
    @bathrooms = data[:bathrooms]
    @bedrooms = data[:bedrooms]
    @renter = data[:renter]
  end

  def add_renter(new_renter)
    @renter = new_renter
  end
end
