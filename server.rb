require 'sinatra'

get '/' do
  @teams = ['betty', 'boop']
  erb :index
end
