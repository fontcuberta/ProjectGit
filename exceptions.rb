class Division
	def execute
			a = gets.chomp.to_i
			b = gets.chomp.to_i
		begin
			puts a/b
		rescue
			puts "You motherfucker you know nothing Jon Snow"
		ensure
			puts "Goodbye"
		end
	end
end


Division.new.execute