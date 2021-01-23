class Race < ApplicationRecord
    belongs_to :character

    def race_call
        url = 'http://www.dnd5eapi.co/api/races'
        response = HTTParty.get(url).to_s
        # response.parsed_response
        parsed_response = JSON.parse(response)

        parsed_response("name")
    end
end
