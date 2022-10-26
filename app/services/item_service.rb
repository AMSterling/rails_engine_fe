class ItemService
  def self.re_merchant_items(merchant_id)
    response = conn.get("api/v1/merchants/#{merchant_id}/items")
    output = JSON.parse(response.body, symbolize_names: :true)[:data]
  end

  def self.re_items
    response = conn.get('api/v1/items')
    output = JSON.parse(response.body, symbolize_names: :true)[:data]
  end

  def self.one_item(id)
    response = conn.get("api/v1/items/#{id}")
    output = JSON.parse(response.body, symbolize_names: :true)[:data]
  end

  def self.conn
    Faraday.new(url: 'http://localhost:3000/')
  end
end
