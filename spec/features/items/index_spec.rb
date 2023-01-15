require 'rails_helper'

RSpec.describe 'The Item Index', :vcr do
  it 'retrieves a list of all items' do
    visit items_path

    expect(current_path).to eq(items_path)
    expect(page).to have_content('Items')

    within '#item-0' do
      expect(page).to have_link('Item Nemo Facere')
    end
    within '#item-1' do
      expect(page).to have_link('Item Expedita Aliquam')
    end
    within '#item-2' do
      expect(page).to have_link('Item Provident At')
    end

    click_link 'Item Nemo Facere'

    expect(current_path).to eq(item_path(4))

    expect(page).to have_content('Item Nemo Facere')
    expect(page).to have_content('Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.')
    expect(page).to have_content('Unit Price: $42.91')
    expect(page).to have_link('Schroeder-Jerde')
  end
end
