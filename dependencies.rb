class Car
	def initialize(noisy_thing)
		@noisy_thing = noisy_thing
	end
	def sound
		puts "The car goes Brooooom!!!" + @noisy_thing.sound
	end
end

class Engine
	def sound
		return " And the engine goes Chucupúchucupú"
	end
end

class Crash
	def sound
		return "Craaashhhhhh"
	end
end

class Liverpool
	def sound
		return "And a Liverpool fan sings YNWA"
	end
end

good_car = Car.new(Engine.new)
good_car.sound
bad_car = Car.new(Crash.new)
bad_car.sound
karl_car = Car.new(Liverpool.new)
karl_car.sound