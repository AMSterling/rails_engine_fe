class MerchantFacade
  def self.merchants
    json = MerchantService.re_merchants
    json.map do |data|
      Merchant.new(data)
    end
  end

  def self.merchant(id)
    data = MerchantService.one_merchant(id)
      Merchant.new(data)
  end
end
