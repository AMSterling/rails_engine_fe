require 'rails_helper'

RSpec.describe 'Merchant Facade', :vcr do
  it 'is an array of Merchant objects' do
    merchants = MerchantFacade.merchants

    expect(merchants).to be_an Array
    expect(merchants).to be_all Merchant
    expect(merchants.count).to eq 100

    merchants.each do|merchant|
      expect(merchant.id).to be_a String
      expect(merchant.name).to be_a String
    end
  end

  it 'is a merchant object' do
    merchant = MerchantFacade.merchant(1)

    expect(merchant).to be_a Merchant
    expect(merchant.id).to be_a String
    expect(merchant.id).to eq('1')
    expect(merchant.name).to be_a String
    expect(merchant.name).to eq('Schroeder-Jerde')
  end

  it 'is the items merchant' do
    merchant = MerchantFacade.item_merchant(4)

    expect(merchant).to be_a Merchant
    expect(merchant.id).to be_a String
    expect(merchant.id).to eq('1')
    expect(merchant.name).to be_a String
    expect(merchant.name).to eq('Schroeder-Jerde')
  end
end
