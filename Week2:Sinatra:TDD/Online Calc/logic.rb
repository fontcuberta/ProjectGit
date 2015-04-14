require 'pry'
class CountWord
	def execute(thisfile)
		thisfile[:tempfile].read.split.size
	end
end

class TimeAgo
	def execute(hours)
		Time.now - (3600*hours.to_i)
	end
end

class Add
	def exec(num1, num2)
		num1 + num2
	end
end

class Substract
	def exec(num1, num2)
		num1 - num2
	end
end

class Multiply
	def exec(num1, num2)
		num1 * num2
	end
end

class Divide
	def exec(num1, num2)
		num1 / num2
	end
end

class Count
	def exec
		[1..100].each do |x|
			puts "#{x}"
		end
	end
end

