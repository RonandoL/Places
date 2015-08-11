require('rspec')
require('places')

describe('Places') do  # create class
  describe('#location') do
    it('create a location object') do
      new_place = Places.new('Paris France')
      expect(new_place.location()).to(eq('Paris France'))
    end
  end

  describe('.all') do
    it('creates empty array to store locations') do
      expect(Places.all()).to(eq([]))
    end

  end
end
