require 'faraday'
require 'pry'
response = Faraday.get('https://npiregistry.cms.hhs.gov/api/?number=&enumeration_type=&taxonomy_description=&first_name=&use_first_name_alias=&last_name=&organization_name=Onco360&address_purpose=&city=&state=&postal_code=&country_code=&limit=&skip=&pretty=&version=2.1')
#puts response.body
parsed_json = JSON.parse(response.body)
parsed_json["results"].each do | pharmacy | 
    puts pharmacy ["number"]
    puts pharmacy ["basic"]["organization_name"]
end 