require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester
  
  def initialize(url)
    URI.parse(URL)
  end
  
  
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end 
  
  def parse_json 
    uri = URI.parse(URL)
    people = JSON.parse(self.get_response_body)
  end

end
