class AltFuelServices

  def initialize(zip)
    @zip = zip
    @conn = Faraday.new('https://developer.nrel.gov') do |faraday|
      faraday.headers["X-Api-key"] = ENV["ALT_FUEL"]
      faraday.adapter Faraday.default_adapter
    end

    def get_stations
      response = conn.get("/api/alt-fuel-stations/v1/nearest.json?limit=10&radius=6&fuel_type=ELEC,LPG&location=#{zip}")
      raw_data = JSON.parse(response.body)
      raw_data['fuel_stations']
    end

  end


  private
  attr_reader :zip, :conn

end
