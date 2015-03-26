puts "Where is your name written?"
filename = gets.chomp
yourname = IO.read(filename)
IO.write('hername.txt', yourname)
file_contents = IO.read("hername.txt")
puts "So your name is: #{file_contents}"
