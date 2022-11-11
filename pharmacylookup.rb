require 'faraday'
require 'pry'
response = Faraday.get('https://npiregistry.cms.hhs.gov/api/?organization_name=Onco360&city=&state=&version=2.1')
#puts response.body
parsed_json = JSON.parse(response.body)
parsed_json["results"].each do | pharmacy | 
    puts pharmacy ["number"]
    puts pharmacy ["basic"]["organization_name"]
end 