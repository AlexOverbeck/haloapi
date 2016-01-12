require 'sinatra'
require './halo'
require 'csv'
require 'pry'

get '/' do
  @data = Halo.get_last_match

  slim :index
end

post '/' do
  binding.pry
end

get '/data.json' do
  content_type :json
  player = 'TheInternets'
  key = '1f81e269a1c54e46a43ce766f35eccb0'
  uri = URI("https://www.haloapi.com/stats/h5/players/#{player}/matches")

  uri.query = URI.encode_www_form({
    count: '1'
  })

  request = Net::HTTP::Get.new(uri.request_uri)
  request['Ocp-Apim-Subscription-Key'] = key

  response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
    http.request(request)
  end

  data = JSON.parse(response.body)

  data['Results'].to_json
end

get '/last_match_csv' do
  data = Halo.get_last_match
  content_type 'application/csv'
  attachment "last_match.csv"
  csv_string = CSV.generate do |csv|
    csv << ['match_id','game_mode']
    csv << [data.first['Id']['MatchId'], data.first['Id']['GameMode']]
  end
end
