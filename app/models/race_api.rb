class RaceApi < ApplicationRecord
    belongs_to :character
    
    require 'httparty'
    
    def race_call
        url = 'http://www.dnd5eapi.co/api/races'
        response = HTTParty.get(url)
        response.parsed_response
    end

end