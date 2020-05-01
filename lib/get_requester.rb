# require 'net/http'
 require 'open-uri'
# require 'json'

class GetRequester

  attr_accessor :url

    url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    def initialize(url)
      @url = url
    end

    def get_response_body
      uri = URI.parse(url)
      uri.open.string
    end

    def parse_json
      JSON.parse(get_response_body)
    end

  end
