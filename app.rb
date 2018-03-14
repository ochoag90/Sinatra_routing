require 'sinatra'
require 'sinatra/reloader'

names = ["bobert", "tom", "missy", "kristy"]

get '/' do
	@names = names
  	erb :index
end

get '/oh_hello' do
  return 'Hey!'
end

get '/hi/:name' do
  return "Hi there, #{params[:name]}!"
end

get '/double/:num' do
  @num = params[:num].to_i
  @double = @num * 2
  @result = @double.to_s
  return "Doubling the number equals #{@result}"
end

get '/fancy_hi/:firstname/:lastname' do
  "Hi! Your first name is #{params[:firstname]}, and your last name is #{params[:lastname]}"
end

get '/:firstname/another_fancy_hi/:lastname' do
  "Hi! Your first name is #{params[:firstname]}, and your last name is #{params[:lastname]}."
end

get '/bob' do
	@bob = 'bobert'
	erb :bobert
end 