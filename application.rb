require 'sinatra'
require 'sinatra/reloader' if development?
require 'time'
require './halo'
require './game_base_variant'
require './game_variant'
require 'csv'
require 'pry'

get '/' do
  gamer_tag = params[:gamertag] ||= 'TheInternets'
  @matches = Halo.get_last_match_for_player(gamer_tag)
  slim :index
end

post '/last_match' do
  query = params.map{|key, value| "#{key}=#{value}"}.join("&")
  redirect to("/?#{query}")
end

# get '/last_match_csv' do
#   data = Halo.get_last_match
#   content_type 'application/csv'
#   attachment "last_match.csv"
#   csv_string = CSV.generate do |csv|
#     csv << ['match_id','game_mode']
#     csv << [data.first['Id']['MatchId'], data.first['Id']['GameMode']]
#   end
# end
# This is Jason trying to make a sneaky edit :D!
