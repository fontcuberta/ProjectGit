require 'sinatra'
require 'sinatra/reloader' if development?
require 'io/console'
require 'pry'
$LOAD_PATH << '.'
require 'logic.rb'

get '/' do
	erb :wc
end

post '/' do
	a = CountWord.new.execute(params[:file])
	"Uploaded #{a}"
end


