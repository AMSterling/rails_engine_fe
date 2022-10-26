require 'rails_helper'

RSpec.describe 'Item Facade', :vcr do
  it 'is an array of Item objects belonging to a Merchant' do
    items = ItemFacade.merchant_items(1)

    expect(items).to be_an Array
    expect(items).to be_all Item
    expect(items.count).to eq 15

    items.each do|item|
      expect(item.id).to be_a String
      expect(item.name).to be_a String
      expect(item.description).to be_a String
      expect(item.unit_price).to be_a Float
      expect(item.merchant_id).to be_an Integer
    end
  end

  it 'is an array of Item objects' do
    items = ItemFacade.items

    expect(items).to be_an Array
    expect(items).to be_all Item
    expect(items.count).to eq 2483

    items.each do|item|
      expect(item.id).to be_a String
      expect(item.name).to be_a String
      expect(item.description).to be_a String
      expect(item.unit_price).to be_a Float
      expect(item.merchant_id).to be_an Integer
    end
  end

  it 'is an Item object' do
    item = ItemFacade.item(4)

    expect(item.id).to be_a String
    expect(item.name).to be_a String
    expect(item.description).to be_a String
    expect(item.unit_price).to be_a Float
    expect(item.merchant_id).to be_an Integer
  end
end
