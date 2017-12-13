class Station

  def initialize(data)
    @name = data['station_name']
    @address = data["street_address"]
    @fuel_type = data["fuel_type_code"]
    @distance = data["distance"]
    @access_times = data["access_days_time"]
  end

  def self.create_stations(zip)
    stations = AltFuelServices.new(zip).get_stations
    make_stations(stations)
  end

  def self.make_stations(stations)
    stations.map do |station|
      Station.new(station)
    end
  end

  private
    attr_reader :name, :address, :fuel_type, :distance, :access_times
end
