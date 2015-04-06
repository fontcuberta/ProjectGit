class Car
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


fitipaldi = RaceCar.new
fitipaldi.honk
fitipaldi.cities