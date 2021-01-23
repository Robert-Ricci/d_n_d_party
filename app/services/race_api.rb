class RaceApi < ApplicationRecord
    belongs_to :character
    
    require 'httparty'
    
    def race_call
        url = 'http://www.dnd5eapi.co/api/races'
        response = HTTParty.get(url).to_s
        # response.parsed_response
        parsed_response = JSON.parse(response)

        parsed_response("name")
    end

    def race_info_call(input)
        url = 'http://www.dnd5eapi.co/api/races'
        response = HTTParty.get(url + "/#{input}")
         # response.parsed_response
         parsed_response = JSON.parse(response)
    end

end
