require 'pry'
class CountWord
	def execute(thisfile)
		thisfile[:tempfile].read.split.size
	end
end

class TimeAgo
	def execute(hours)
		Time.now - (3600*.to_i)
	end
end

