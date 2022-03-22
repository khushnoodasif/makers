require 'sinatra'
require "sinatra/reloader" if development?

get '/' do "cat"
end

get '/cat' do 
  "<p style='border: 2px dotted red'>
  <img src= 'https://imgur.com/jFaSxym.png'>
   </p>"

end
