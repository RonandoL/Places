require('rspec')
require('places')

describe('Places') do  # create class
  describe('#location') do
    it('create a location object') do
      new_place = Places.new('Paris France')
      expect(new_place.location()).to(eq('Paris France'))
    end
  end

end
