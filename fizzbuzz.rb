int = 1
string = ""
while int <=100
	if int % 3 == 0
		string = "Fizz"
		if int % 5 == 0
			string +="Buzz"
		end
	elsif int % 5 == 0
		string = "Buzz"
	else
		string = int		
	end
	int+=1
	puts string
end