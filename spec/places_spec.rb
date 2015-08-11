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

  describe('#save') do
    it('save inputted location into array') do
      new_place = Places.new('Seattle, Washington')
      new_place.save()
      expect(Places.all()).to(eq([new_place])) # grabs the array, saves obj to array
    end
  end
end
