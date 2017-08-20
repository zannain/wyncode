require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/ajax-endpoint' do
  JSON.dump({msg: "it loaded!"})
end
