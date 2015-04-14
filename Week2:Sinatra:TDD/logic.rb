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

