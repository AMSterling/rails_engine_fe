require 'rails_helper'

RSpec.describe Merchant, :vcr do
  it 'is a Merchant with attributes' do
    data = {:id=>"1", :type=>"merchant", :attributes=>{:name=>"Schroeder-Jerde"}}
    merchant = Merchant.new(data)

    expect(merchant.id).to eq('1')
    expect(merchant.name).to eq('Schroeder-Jerde')
  end
end
