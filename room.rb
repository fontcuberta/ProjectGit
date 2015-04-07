require 'colorize'
class Room
	attr_accessor :exit
	attr_accessor :rightmove
	attr_accessor :wrongmove
	attr_accessor :description
	attr_accessor :death
	attr_accessor :gun

	def initialize(exit, rightmove, wrongmove, description, death)
		@exit = exit
		@rightmove = rightmove
		@wrongmove = wrongmove
		@description = description
		@death = death
		@gun = ""
	end

	def where
		puts "You are in the #{description}. There is an exit at #{exit}.\n>"
		return gets.chomp
	end

	def get_out
		puts rightmove
	end
end

class Enviroment
	def initialize
		@path = Array.new
		@Inventory = Array.new
	end

	def add_room(room)
		@path << room
	end

	def pickup(gun)
		@Inventory << gun
	end

	def print_inventory
		puts "Hum!!! In your pocket you will find: \n"
		@Inventory.each_with_index do |gun, index|
			puts "#{index+1}) #{gun}"
		end
	end

	def drop
		if @Inventory == []
			puts "Ooooops!!! Your pockets are empty -.- "
		else
			p = print_inventory
			puts "Select the number of the object you want to drop"
			obj_index = gets.chomp.to_i
			puts "You just dropped the #{@Inventory[obj_index-1]}"
			a = @Inventory[obj_index-1]
			@Inventory.delete_at(obj_index)
			return a
		end

	end

	def playing
		@path.each do |room|
			loop do
				answer = room.where
					case answer
					when "N", "E", "S", "W"
						if answer == room.exit
							room.get_out
							break
						else
							puts room.wrongmove
						end
					when "pickup"
						if room.gun!=""
							a = pickup(room.gun)
							p = print_inventory
							room.gun = ""
						else
							puts ("There is nothing here!").colorize(:red)
						end
					when "drop"
						a = drop
					when "quit", "exit"
						puts "Bye, bye... quitter!!!"
						exit
					else
						puts ("So sorry... I don't understand your babbling!!!. Try again").colorize(:yellow)
					end
			end
		end
	puts "WINNEEEEEERRRRRRR!!!"
	end

	def treeofchoices

	end

end



myLaby = Enviroment.new
room_cow = Room.new("S", "Exit from room Cow", "A cow will eat you", "Room with cows", "The cow just ate. GAME OVER")
room_cow.gun = "Sword"
room_dog = Room.new("E", "Exit from room Dog", "A dog will eat you", "Room with dogs", "The dog just ate. GAME OVER")
room_cat = Room.new("N", "Exit from room Cat", "A cat will eat you", "Room with cats", "The cat just ate. GAME OVER") 
room_cat.gun = "Magnum"
myLaby.add_room(room_cow)
myLaby.add_room(room_dog)
myLaby.add_room(room_cat)
myLaby.playing