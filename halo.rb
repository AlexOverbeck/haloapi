require 'net/http'
require 'json'

class Halo
  def self.get_api
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

    data['Results']
  end
end
