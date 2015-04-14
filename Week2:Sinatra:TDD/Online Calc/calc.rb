require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'io/console'
require 'pry'
$LOAD_PATH << '.'
require 'logic'

get '/' do
	erb :home
end


post '/' do
	num1 = params[:num1].to_i
	num2 = params[:num2].to_i
	 if (params[:add]!=nil)
	 	@result = Add.new.exec(num1, num2)
	 elsif (params[:substract]!=nil)
	 	@result = Substract.new.exec(num1, num2)
	 elsif (params[:multiply]!=nil)
	 	@result = Multiply.new.exec(num1, num2)
	 elsif (params[:divide]!=nil)
	 	@result = Divide.new.exec(num1, num2)
	 elsif (params[:count]!=nil)
	 	@result = Count.new.exec
	 else
	 	"Error"
	 end
	erb :home
end


