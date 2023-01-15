require 'rails_helper'

RSpec.describe 'The Merchant Index', :vcr do
  it 'retrieves a list of all merchants' do
    visit merchants_path

    expect(current_path).to eq(merchants_path)
    expect(page).to have_link('Home')
    expect(page).to have_content('Merchants')

    within '#merchant-0' do
      expect(page).to have_link('Schroeder-Jerde')
    end
    within '#merchant-1' do
      expect(page).to have_link('Klein, Rempel and Jones')
    end
    within '#merchant-2' do
      expect(page).to have_link('Willms and Sons')
    end

    click_link 'Schroeder-Jerde'

    expect(current_path).to eq(merchant_path(1))

    expect(page).to have_content('Schroeder-Jerde')
  end
end
