require 'sinatra'
require 'net/http'
require 'json'
require './halo'

get '/' do
  @data = Halo.get_api
  slim :index
end
