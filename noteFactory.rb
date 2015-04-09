class User
	attr_accessor :email
	attr_accessor :facebook
	attr_accessor :twitter

	def initialize(name)
		@name = name
	end
end

class NotificatorFactory

	def notify(user)
		if user.email
			puts "Spammed through email"
		elsif user.facebook
			puts "Spammed through facebook"
		elsif user.twitter
			puts "Spammed through twitter"
		else
			puts "error"
		end
	end
end
		


ana = User.new("Ana")
ana.email = "ana@email.com"
ana.twitter = "@anita"
spam = NotificatorFactory.new
spam.notify(ana)


