require 'sinatra'
require "sinatra/reloader" if development?

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
 end

post '/named-cat' do
  p params
  @name = params[:name]
  @color = params[:color]
  @adorable = params[:adorable]
  erb(:index)
end
