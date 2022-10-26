require 'rails_helper'

RSpec.describe 'The Merchant Show Page', :vcr do
  it 'retrieves a merchant and its items' do
    visit merchant_path(1)

    expect(current_path).to eq(merchant_path(1))
    expect(page).to have_content('Schroeder-Jerde')

    within '#item-0' do
      expect(page).to have_link('Item Nemo Facere')
      expect(page).to have_content('Sunt eum id eius magni consequuntur')
      expect(page).to have_content(42.91)
    end
    within '#item-1' do
      expect(page).to have_link('Item Expedita Aliquam')
      expect(page).to have_content('Voluptate aut labore qui illum tempore eius.')
      expect(page).to have_content(687.23)
    end
    within '#item-2' do
      expect(page).to have_link('Item Provident At')
      expect(page).to have_content('Numquam officiis reprehenderit eum ratione')
      expect(page).to have_content(159.25)
    end
  end
end
