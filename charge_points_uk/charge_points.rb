require "json"
require "httparty"

class ChargePoints
    include HTTParty
    format :json

    def self.all_counties
        response = get("http://chargepints.dft.gov.uk/api/retrieve/registry/format/json")
        response['ChargeDevice']
    end

end

charge_points = ChargePoints.new
puts charge_points.all_counties
