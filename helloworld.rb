require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	@salute = "Arya Stark"
	erb :home
end