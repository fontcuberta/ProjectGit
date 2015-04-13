require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	@time = Date.today
	erb :indextime
end