class MerchantService
  def self.re_merchants
    response = conn.get('api/v1/merchants')
    output = JSON.parse(response.body, symbolize_names: :true)[:data]
  end

  def self.one_merchant(id)
    response = conn.get("api/v1/merchants/#{id}")
    output = JSON.parse(response.body, symbolize_names: :true)[:data]
  end

  def self.re_item_merchant(item_id)
    response = conn.get("api/v1/items/#{item_id}/merchant")
    output = JSON.parse(response.body, symbolize_names: :true)[:data]
  end

  def self.re_find_all_merchants(search_name)
    response = conn.get("api/v1/merchants/find_all?name=#{search_name}")
    output = JSON.parse(response.body, symbolize_names: :true)[:data]
  end

  def self.conn
    Faraday.new(url: 'http://localhost:3000/')
  end
end
