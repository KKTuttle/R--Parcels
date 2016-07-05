require('rspec')
require('parcels')

describe (Parcel) do
  describe('#volume') do
    it('returns the volume of the parcel') do
      test_parcel= Parcel.new(3, 3, 2, 10, 0)
      expect(test_parcel.volume()).to(eq(18))
    end
  end
  describe('#cost_to_ship') do
    it('returns the cost to ship the parcel') do
      test_parcel=Parcel.new(3, 3, 2, 10, 1)
      expect(test_parcel.cost_to_ship()).to(eq(30))
    end
  end
end
