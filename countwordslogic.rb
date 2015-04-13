require 'pry'
class CountWord
	def execute(thisfile)
		thisfile[:tempfile].read.split.size
	end
end
