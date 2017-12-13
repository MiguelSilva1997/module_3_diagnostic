class AltFuelServices

  def initialize(zip)
    @zip = zip
    @conn = Faraday.new(url: 'https://developer.nrel.gov') do |faraday|
      faraday.headers["X-Api-key"] = ENV["ALT_FUEL"]
      faraday.adapter Faraday.default_adapter
    end
  end


  private
  attr_reader :zip, :conn

end
