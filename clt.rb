require 'pry'
require 'JSON'
class CommandLine
	def start
		Login.new
	end
end

class Login
	def initialize
		@user
		@password
	end
	def login
		puts "User"
		@user = gets.chomp
		puts "Password"
		@password = gets.chomp
	end

	def verify
		if @password == PasswordfromFile.new.execute(@user)
			PromptText.new.asktext
		else
			puts "Wrong user or password!"
		end
	end
end

class PromptText
	def initialize
		@text
	end
	def asktext
		puts "Gimme text"
		@text =  gets.chomp
		Menu.new([OptionSW.new, OptionSL.new], @text).show

	end
end

class PasswordfromFile
	def initialize
		@file = JSON.parse(IO.read("password.txt"))
			binding.pry
	end

	def execute(user)
		@file[user]
	end
end

class Menu
	def initialize(menu,text)
		@menu = menu
		@text = text
	end
	def show
		puts "Select option"
		@menu.each_with_index do |item, index|
			puts "#{index}) #{item.desc}."
		end
		selected_opt = gets.chomp
		@menu[selected_opt.to_i].execute(@text)
	end
end

class OptionSW
	def desc
		"Count words"
	end
	def execute(text)
		puts text.split.size
	end
end

class OptionSL
	def desc
		"Count letters"
	end
	def execute(text)
		puts text.length
	end
end
class OptionRev
	def desc
		"Reverse"
	end
	def execute(text)
		puts text.reverse
	end
end
class OptionUpCase
	def desc
		"Uppercase"
	end
	def execute(text)
		puts text.upcase
	end
end

class OptionDownCase
	def desc
		"Downcase"
	end
	def execute(text)
		puts text.downcase
	end
end

myctl = CommandLine.new.start
myctl.login
myctl.verify


