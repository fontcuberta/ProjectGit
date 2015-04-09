class Path
	def initialize(room1, room2, room3, room4)
		@path = {:a => room1, :b => room2, :c => room3, :d => room4}
	end

end

room_cow = Room.new("S", "Exit from room Cow", "A cow will eat you", "Room with cows", "The cow just ate. GAME OVER")
room_cow.gun = "Sword"
room_dog = Room.new("E", "Exit from room Dog", "A dog will eat you", "Room with dogs", "The dog just ate. GAME OVER")
room_cat = Room.new("N", "Exit from room Cat", "A cat will eat you", "Room with cats", "The cat just ate. GAME OVER")
room_bat = Room.new("N", "Exit from room Bat", "A bat will eat you", "Room with bats", "The bat just ate. GAME OVER")
room_cat.gun = "Magnum"

my_path = Path.new(room_cow, room_dog, room_cat, room_bat)
