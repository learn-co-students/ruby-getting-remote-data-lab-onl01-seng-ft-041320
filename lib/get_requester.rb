# Write your code here
       require 'open-uri'
    require 'net/http'
class GetRequester

  attr_accessor :url
  def initialize(url)
    @url = url
   
  end

  def get_response_body
  # binding.pry 
   uri = URI.parse(@url)
   uri.open.string
  end

  def parse_json
       uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end

end 