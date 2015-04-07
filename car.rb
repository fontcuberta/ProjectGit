class Car
  attr_reader :sound
  def initialize(sound)
      @sound = sound
      @cities = Array.new
      @cities << ('Madrid')
  end

  def honk
  	puts @sound
  end

  def self.honk_twice(thecar)
  	thecar.honk
  	thecar.honk
  end
  def traveling(new_city)
  	IO.write('cities.txt', new_city)
  	@cities << new_city
  end
  def cities()
  	puts @cities
  end
end

class RaceCar < Car
	def initialize
      @cities = Array.new
      @cities << ('Indianapolis')
	end
	def honk
		puts "BROOOOOOOM I'm the best"
	end
end

ParkingLot = Array.new
fitipaldi = RaceCar.new
fitipaldi.honk
fitipaldi.cities

car1 = Car.new("Pipipipi")
car2 = Car.new ("Tururururu")
car3 = Car.new ("Booooombomban!")
ParkingLot << car1
ParkingLot << car2
ParkingLot << car3

sounds = ["Broom", "Meek", "Nyan"]

parkingnew = Array.new
parkingnew = sounds.map do |sound|
  car =Car.new(sound)
  car
end

 p parkingnew.reduce(""){|sum,x| sum + x.sound}




