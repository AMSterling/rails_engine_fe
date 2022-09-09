class RailsEngineService
  def self.re_merchants
    response = conn.get("merchants")
    output = JSON.parse(response.body, symbolize_names: :true)
    require "pry"; binding.pry
  end

  def self.conn
    Faraday.new("http://localhost:3000/api/v1")
  end
end
