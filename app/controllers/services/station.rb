class Station

  attr_reader :name, :address, :fuel_types, :distance, :access_times

  def initialize(data)
    @name = data
    @address = data
    @fuel_types = data
    @distance = data
    @access_times = data
  end

  def self.create_stations

  end

end
