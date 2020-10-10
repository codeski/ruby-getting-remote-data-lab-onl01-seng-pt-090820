require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

# uri = URI.parse(url)
# response = Net::HTTP.get_response(uri)
# response.body




class GetRequester
  
  # URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  
def initialize(url)
  uri = URI.parse(url)
end
  
  
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end 
  
  def parse_json 
    uri = URI.parse(URL)
    people = JSON.parse(self.get_response_body)
      people.collect do |people| 
        :people["name"]
        :people["occupation"]
      end
    
  end

end
