class Car
	def initialize(noisy_thing)
		@noisy_thing = noisy_thing
	end
	def sound
		return @noisy_thing.sound
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

class CarListReport
	def initialize(formatter, carlist)
		@formatter = formatter
		@carlist = carlist
	end

	def output
		printlist = @carlist.map do |car|
			car.sound
		end
		p printlist
		@formatter.print(printlist)
	end


end

class HTMLFormatter
	def print(list)
		list.each do |element|
			puts "<html>"
			puts element
			puts  "</html>\n\n"
		end
	end
end

class HASHFormatter
	def print(list)
		list.each do |element|
			puts "#"
			puts element
		end
	end
end


good_car = Car.new(Engine.new)
good_car.sound
bad_car = Car.new(Crash.new)
bad_car.sound
karl_car = Car.new(Liverpool.new)
karl_car.sound
carlist = [good_car, bad_car, karl_car]
CarListReport.new(HTMLFormatter.new, carlist).output
CarListReport.new(HASHFormatter.new, carlist).output
