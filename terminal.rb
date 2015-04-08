require 'terminfo'

class Terminal
	def execute
		puts TermInfo.screen_size
	end
end

Terminal.new.execute