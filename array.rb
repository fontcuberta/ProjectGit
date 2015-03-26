my_Array = []
my_Array << "A"
my_Array.push "B"
my_Array.push "This is the third position"
my_Array.delete_at 2
puts my_Array
string = ""

# While the string's length is less than 10
while string.size < 10
  # Add an 'a'
  string = string + 'a'
end

puts "The final string is #{string}"
