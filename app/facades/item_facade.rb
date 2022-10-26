class ItemFacade
  def self.merchant_items(merchant_id)
    json = ItemService.re_merchant_items(merchant_id)
    json.map do |data|
      Item.new(data)
    end
  end

  def self.items
    json = ItemService.re_items
    json.map do |data|
      Item.new(data)
    end
  end

  def self.item(id)
    data = ItemService.one_item(id)
      Item.new(data)
  end
end
