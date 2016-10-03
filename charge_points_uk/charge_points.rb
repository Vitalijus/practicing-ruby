require "json"
require 'jsonpath'


class ChargePoints   
	charge_points = File.read('charge_points.json')
	RESPONSE = JSON.parse(charge_points)

    def self.all_counties
        counties = JsonPath.new('$..County').on(RESPONSE.to_json)
        puts "All counties with charge points for electric car: \n #{counties.compact.uniq}"
    end

    def self.by_county(county)
    	counties = JsonPath.new('$..County').on(RESPONSE.to_json)
    	counties = counties.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
    	puts "Number of charge points in #{county}: #{counties[county]}"
    end

    def self.list_of_streets
        streets = JsonPath.new('$..Street').on(RESPONSE.to_json)
        puts "List of streets with charge points for electric car: \n #{streets.compact.uniq - [""]}"
    end

end

ChargePoints.all_counties
ChargePoints.by_county("Greater London")
ChargePoints.list_of_streets
