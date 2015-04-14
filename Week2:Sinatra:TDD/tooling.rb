require 'sinatra'
require 'sinatra/reloader' if development?
require 'io/console'
require 'pry'
require 'artii'
$LOAD_PATH << '.'
require 'logic.rb'

get '/' do
	logger.info"Hi! Im a log"
end

get '/todo_item/delete/:item' do
	"The worst movie ever was #{params[:item]}"
end

get '/time/before/:hours' do
	time = TimeAgo.new.execute(params[:hours])
	"Time, #{params[:hours]} hours ago, was #{time}"
end

get '/artii/:texto' do
	to_art = params[:texto]
	a = Artii::Base.new :font => 'slant'
	a.asciify(to_art)
end
