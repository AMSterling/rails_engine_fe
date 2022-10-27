require 'rails_helper'

RSpec.describe 'Merchant Service', :vcr do
  it 'gets a response for all merchants' do
    merchants = MerchantService.re_merchants

    expect(merchants).to be_an Array

    merchants.each do|merchant|
      expect(merchant).to have_key(:id)
      expect(merchant[:id]).to be_a String
      expect(merchant).to have_key(:type)
      expect(merchant[:type]).to eq('merchant')
      expect(merchant).to have_key(:attributes)
      expect(merchant[:attributes]).to have_key(:name)
      expect(merchant[:attributes][:name]).to be_a String
    end
  end

  it 'gets a response for one merchant' do
    merchant = MerchantService.one_merchant(1)

    expect(merchant).to have_key(:id)
    expect(merchant[:id]).to be_a String
    expect(merchant[:id]).to eq('1')
    expect(merchant).to have_key(:type)
    expect(merchant[:type]).to eq('merchant')
    expect(merchant).to have_key(:attributes)
    expect(merchant[:attributes]).to have_key(:name)
    expect(merchant[:attributes][:name]).to be_a String
    expect(merchant[:attributes][:name]).to eq('Schroeder-Jerde')
  end

  it 'gets a response for an items merchant' do
    merchant = MerchantService.re_item_merchant(4)

    expect(merchant).to have_key(:id)
    expect(merchant[:id]).to be_a String
    expect(merchant[:id]).to eq('1')
    expect(merchant).to have_key(:type)
    expect(merchant[:type]).to eq('merchant')
    expect(merchant).to have_key(:attributes)
    expect(merchant[:attributes]).to have_key(:name)
    expect(merchant[:attributes][:name]).to be_a String
    expect(merchant[:attributes][:name]).to eq('Schroeder-Jerde')
  end

  it 'gets a response for all merchants matching name' do
    search_name = 'iLl'
    merchants = MerchantService.re_find_all_merchants(search_name)

    expect(merchants).to be_an Array

    merchants.each do|merchant|
      expect(merchant).to have_key(:id)
      expect(merchant[:id]).to be_a String
      expect(merchant).to have_key(:type)
      expect(merchant[:type]).to eq('merchant')
      expect(merchant).to have_key(:attributes)
      expect(merchant[:attributes]).to have_key(:name)
      expect(merchant[:attributes][:name]).to be_a String
    end
  end
end
