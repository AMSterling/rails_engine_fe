require 'rails_helper'

RSpec.describe 'The Welcome Page', :vcr do
  it 'is the root page' do
    visit root_path

    expect(current_path).to eq(root_path)
    expect(page).to have_link('Merchants')
    expect(page).to have_link('Items')

    click_link 'Merchants'

    expect(current_path).to eq(merchants_path)
    expect(page).to have_link('Home')

    click_link 'Home'

    expect(current_path).to eq(root_path)

    click_link 'Items'

    expect(current_path).to eq(items_path)
  end

  it 'has a search field to find all merchants by name' do
    visit root_path

    expect(page).to have_field(:name)
    expect(page).to have_button('Search')

    fill_in :name, with: 'iLl'
    click_button 'Search'

    expect(current_path).to eq(root_path)

    within '#merchant-0' do
      expect(page).to have_link('Schiller, Barrows and Parker')
    end
    within '#merchant-1' do
      expect(page).to have_link('Tillman Group')
    end
    within '#merchant-2' do
      expect(page).to have_link('Williamson Group')
    end
    within '#merchant-3' do
      expect(page).to have_link('Williamson Group')
    end
    within '#merchant-4' do
      expect(page).to have_link('Willms and Sons')
    end
  end
end
