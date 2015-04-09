class Person
	attr_reader :name
	attr_accessor :age
 def initialize(name)
 	@name = name
 end
end

student = Person.new("Alex Hamilton")
puts student.name
student.age = 21
puts student.age
student.age = 22
puts student.age