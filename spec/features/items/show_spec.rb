require 'rails_helper'

RSpec.describe 'The Item Show Page', :vcr do
  it 'displays information about an item' do
    visit item_path(4)

    expect(page).to have_link('Home')
    expect(page).to have_content('Item Nemo Facere')
    expect(page).to have_content('Description: Sunt eum id eius magni consequuntur')
    expect(page).to have_content('Unit Price: $42.91')
    expect(page).to have_content('Merchant: Schroeder-Jerde')
    expect(page).to have_link('Schroeder-Jerde')

    click_link 'Schroeder-Jerde'

    expect(current_path).to eq(merchant_path(1))
  end
end
