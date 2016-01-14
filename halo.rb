require 'net/http'
require 'json'

class Halo
  def self.get_last_match_for_player(player)
    url = "https://www.haloapi.com/stats/h5/players/#{player}/matches"
    query = { count: 1 }
    response = make_request(url, query)
    data = JSON.parse(response.body)

    data['Results']
  end

  def self.make_request(url, query)
    key = '1f81e269a1c54e46a43ce766f35eccb0'
    uri = URI(url)

    uri.query = URI.encode_www_form(query)

    request = Net::HTTP::Get.new(uri.request_uri)
    request['Ocp-Apim-Subscription-Key'] = key

    response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
      http.request(request)
    end

    response
  end
  private_class_method :make_request

end
