require('rspec')
require('places')
require('pry')

describe('Places') do  # create class

# BEFORE
  before() do
    Places.clear() # calls clear method, update spec file to clear things out before each spec run:
  end

  describe('#location') do
    it('create a location object') do
      new_place = Places.new('Paris, France')
      expect(new_place.location()).to(eq('Paris, France'))
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

  describe('.clear') do
    it('clears the array of inputted locations') do
      Places.new("Portland").save()    # short cut way to write it out
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end
end
