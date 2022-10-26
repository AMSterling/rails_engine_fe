require 'rails_helper'

RSpec.describe Item, :vcr do
  it 'is a Item with attributes' do
    data = {
      :id=>'4',
      :type=>'item',
      :attributes=>{
        :name=>'Item Nemo Facere',
        :description=>'Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.',
        :unit_price=>42.91,
        :merchant_id=>1
        }
      }

    item = Item.new(data)

    expect(item.id).to eq('4')
    expect(item.name).to eq('Item Nemo Facere')
    expect(item.description).to start_with('Sunt eum id eius magni consequuntur delectus veritatis.')
    expect(item.unit_price).to eq(42.91)
    expect(item.merchant_id).to eq(1)
  end
end
