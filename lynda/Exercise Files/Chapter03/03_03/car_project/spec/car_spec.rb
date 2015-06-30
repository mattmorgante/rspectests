require 'car'

describe 'Car' do

  describe 'attributes' do
    
    it "allows reading and writing for :make" do
      # write some ruby code to get to the setup 
      car = Car.new
      # set a value 
      car.make = 'Test'
      # read that value back 
      expect(car.make).to eq('Test')
      # if this is true, test will pass 
    end
    
    it "allows reading and writing for :year" do
      car = Car.new
      car.year = 9999
      expect(car.year).to eq(9999)
    end
    
    it "allows reading and writing for :color" do
      car = Car.new
      car.color = 'foo'
      expect(car.color).to eq('foo')
    end
    
    it "allows reading for :wheels" do
      car = Car.new
      # this one is different because it's an attr_reader
      # not an attr_writer 
      expect(car.wheels).to eq(4)
    end
    
  end
  
  describe '.colors' do

    it "returns an array of color names" do
      c = ['blue', 'black', 'red', 'green']
      expect(Car.colors).to match_array(c)
    end

  end
  
  describe '#full_name' do
    
    it "returns a string in the expected format" do
      @honda = Car.new(:make => 'Honda', :year => 2004, :color => 'blue')
      # this checks to see if the format works too 
      expect(@honda.full_name).to eq('2004 Honda (blue)')
    end
    
    # special context = something different happened 
    context 'when initialized with no arguments' do
      it 'returns a string using default values' do
        car = Car.new
        expect(car.full_name).to eq('2007 Volvo (unknown)')
      end
    end

  end

end
