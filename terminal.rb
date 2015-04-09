require 'terminfo'

class CalculateWidth
	def execute
		"%"+(TermInfo.screen_size[1]/2).to_s+"s"
	end
end

class CalculateRight
	def execute
		"%"+(TermInfo.screen_size[1]).to_s+"s"
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
			Prompt.new.execute
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

class Prompt
	def execute
		puts "\n"*(TermInfo.screen_size[0]/2 - 3)
		printf( CalculateRight.new.execute, "next: For the next slide\n")
		printf( CalculateRight.new.execute, "previous: For the previous one")
	end
end

Show_slide.new.execute