require 'terminfo'

class Terminal
	def calculate
	end

	def show
	end
	def execute
		puts "\n"*(TermInfo.screen_size[0]/2)                        
		printf(CalculateWidth.new.execute, "")
		sleep 2
		system("clear")
	end
end

class CalculateWidth
	def execute
		"%"+(TermInfo.screen_size[1]/2).to_s+"s"
	end
end


class Show_slide
	def initialize
		@slides = ["Prepare for the next \033[1mbig\033[0m thing", "The iTerminal", "Is here"]
	end
	def execute
		system("clear")
		sleep 2
		@slides.each do |slide|
			puts "\n"*(TermInfo.screen_size[0]/2)
			printf(CalculateWidth.new.execute, slide)
			sleep 2
			system("clear")
		end
	end
end

class Move
	def foward
	end
	def backward
	end
end



Show_slide.new.execute