require 'colorize'
require 'pry'
require 'terminfo'
class AskNumber
	def exec
	puts ("Gimme a number")
	CheckFB.new.exec(gets.chomp.to_i)
	end
end

class CheckFB

	def exec(int)
		num_word={3 => "Fizz", 5 => -> "Bu#zz", 7 => "Poom"}
		string = ""
		num_word.each do |number, word|
 			if DivisibleBy(int, number)
 			string += word
 			end
 		end
		if string == ""
			string = int	
		end
		puts ("The answer is #{string}").colorize(:green)
	end

	def DivisibleBy(int, value)
		int % value == 0
 	end
 end

AskNumber.new.exec
p TermInfo.screen_size

