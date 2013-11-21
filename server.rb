require 'sinatra'
require './bob'

get '/' do
  erb :index
end

post '/ask' do
  bob = Bob.new
  bob.hey(params["chat"])
end
