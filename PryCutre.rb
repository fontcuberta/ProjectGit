require 'Date'
class PryCutre
	def execute
		begin
		work
		rescue
		puts "You know nothing Jon Snow"
		ensure
			work
		end
	end

	def work
		puts ">>"
		result = eval gets.chomp
		puts result
	end

end 

PryCutre.new.execute