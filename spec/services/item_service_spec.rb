require 'rails_helper'

RSpec.describe 'Item Service', :vcr do
  it 'gets a response for all items that belong to a merchant' do
    items = ItemService.re_merchant_items(1)

    expect(items).to be_an Array

    items.each do|item|
      expect(item).to have_key(:id)
      expect(item[:id]).to be_a String
      expect(item).to have_key(:type)
      expect(item[:type]).to eq('item')
      expect(item).to have_key(:attributes)
      expect(item[:attributes]).to have_key(:name)
      expect(item[:attributes][:name]).to be_a String
      expect(item[:attributes]).to have_key(:description)
      expect(item[:attributes][:description]).to be_a String
      expect(item[:attributes]).to have_key(:unit_price)
      expect(item[:attributes][:unit_price]).to be_a Float
      expect(item[:attributes]).to have_key(:merchant_id)
      expect(item[:attributes][:merchant_id]).to be_an Integer
    end
  end

  it 'gets a response for all items' do
    items = ItemService.re_items

    expect(items).to be_an Array

    items.each do|item|
      expect(item).to have_key(:id)
      expect(item[:id]).to be_a String
      expect(item).to have_key(:type)
      expect(item[:type]).to eq('item')
      expect(item).to have_key(:attributes)
      expect(item[:attributes]).to have_key(:name)
      expect(item[:attributes][:name]).to be_a String
      expect(item[:attributes]).to have_key(:description)
      expect(item[:attributes][:description]).to be_a String
      expect(item[:attributes]).to have_key(:unit_price)
      expect(item[:attributes][:unit_price]).to be_a Float
      expect(item[:attributes]).to have_key(:merchant_id)
      expect(item[:attributes][:merchant_id]).to be_an Integer
    end
  end

  it 'gets a response for one item' do
    item = ItemService.one_item(4)

    expect(item).to have_key(:id)
    expect(item[:id]).to be_a String
    expect(item).to have_key(:type)
    expect(item[:type]).to eq('item')
    expect(item).to have_key(:attributes)
    expect(item[:attributes]).to have_key(:name)
    expect(item[:attributes][:name]).to be_a String
    expect(item[:attributes]).to have_key(:description)
    expect(item[:attributes][:description]).to be_a String
    expect(item[:attributes]).to have_key(:unit_price)
    expect(item[:attributes][:unit_price]).to be_a Float
    expect(item[:attributes]).to have_key(:merchant_id)
    expect(item[:attributes][:merchant_id]).to be_an Integer
  end
end
