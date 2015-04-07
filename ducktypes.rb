class Machines
	def initialize
		@all_machines = Array.new
	end

	def add_machine(toy)
		@all_machines << toy
	end

	def show_toys
		puts
		@all_machines.each do |toy|
			puts toy.sound
		end
		puts
	end

	def count_tires
		alltires = 0
		@all_machines.each do |toy|
			alltires = alltires + toy.tires
		end
		puts "I have " + alltires.to_s + " tires in my toys \n"
	end

end

class Tram
	attr_accessor :tires
	def initialize
		@tires = 6
	end

	def sound
		"I am the Tram"
	end
end

class Car
	attr_accessor :tires
	def initialize
		@tires = 4
	end

	def sound
		"I am the Car"
	end
end

class Truck
	attr_accessor :tires
	def initialize
		@tires = 4
	end

	def sound
		"I am the Truck"
	end
end

class Airplane
	attr_accessor :tires
	def initialize
		@tires = 2
	end
	def sound
		"Just 2 tires but I have wings mofoooos"
	end
end

my_toys = Machines.new
my_tram = Tram.new
my_car = Car.new
my_truck = Truck.new
my_airplane = Airplane.new
javis_airplane = Airplane.new
my_toys.add_machine(my_tram)
my_toys.add_machine(my_car)
my_toys.add_machine(my_truck)
my_toys.add_machine(my_airplane)
my_toys.add_machine(javis_airplane)
my_toys.show_toys
my_toys.count_tires

