require 'open-uri'
require 'net/http'
require 'json'
require 'pry'

class GetRequester
  
  def initialize(url)
    @url = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
  end 
  
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end 
  
  def parse_json
    requests = JSON.parse(self.get_response_body)
    requests
  end
end 


