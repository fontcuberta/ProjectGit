#Blog class. the array holds every post created under the blog
class Blog
	def initialize
		@theseposts = Array.new
	end

	def add_new_post(post)
		@theseposts << post
	end
#create_front_page prepares arrays to be shown in pages. Creates pagination and indexes.
	def create_front_page
		@theseposts = @theseposts.reverse
		@arraystoshow = Array.new
		@theseposts.each_slice(3) do |post|
			@arraystoshow << post
		end
	end
#publish_front_page extracts each post inserted in the arrays of arrays of posts and publishes them
	def publish_front_page
		count = 0
		@arraystoshow.each do |little_array|
			little_array.each do|post|
				puts post.show_post
			end
			count = count + 1
			puts "*****************************THIS IS THE PAGE " + count.to_s + "\n\n\n"
			sleep 1 while gets.chomp != "\e[C"
		end
	end
end

#Post class
class Post
	attr_accessor :title
	attr_accessor :post
	def initialize(title, text)
		@title = title
		@text = text
		@date = Time.new
	end

	def show_post
		puts "\n" + @title
		puts "****************"
		puts @text
		puts "------------"
		puts @date
	end

end

#Advertising Post class. Ads format is different than Posts format.

class Ad < Post
	def show_post
		puts "Advertise Disclaimer: This is a Paid Post"
		puts "\n*********" + @title + "*********"
		puts "****************"
		puts @text
		puts "------------"
		puts @date
	end
end

#Creating and showing stuff (in the future it would be nice to create a methods to get it from keyboard)
my_blog = Blog.new
first_post = Post.new("Hello world", "This is my first post")
second_post = Post.new("The Second Post", "Just imagine I have something to say")
paid_post = Ad.new("GET 1000$ CASH (and a very old flipflop)", "You just have to be really annoying to get them. Hurry up!!!")
third_post = Post.new("The Third Wheel", "So you don't fall if you ride a bike")
fourth_post = Post.new("The Fourth Hockey", "The Apocallypsis Now is coming")
fifth_post = Post.new("The Fifth Element", "Well, now this is stupid and I have NOTHING to say. This should be a file")
my_blog.add_new_post(first_post)
my_blog.add_new_post(second_post)
my_blog.add_new_post(paid_post)
my_blog.add_new_post(third_post)
my_blog.add_new_post(fourth_post)
my_blog.add_new_post(fifth_post)
my_blog.create_front_page
my_blog.publish_front_page

