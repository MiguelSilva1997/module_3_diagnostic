require 'rails_helper'

describe Station do
  it "takes a hash as an argument" do
    station = Station.new({ 'station_name' => 'Station',
                            'street_address' => "123 Main",
                            'fuel_type_code' => 'ELEC',
                            'distance' => 1 })

    expect(station.name).to eq('Station')
    expect(station.address).to eq('123 Main')
    expect(station.fuel_type).to eq('ELEC')
    expect(station.distance).to eq(1)
  end
end
