require 'sinatra'
require 'sinatra/reloader'

get '/hi' do
  'Hello World'
end

get '/bottles' do
  99.downto(0).map do |x|
    "#{x} bottles of beer on the wall. <br />"
  end.join
end

