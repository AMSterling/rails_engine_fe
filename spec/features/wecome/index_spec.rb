require 'rails_helper'

RSpec.describe 'The Welcome Page' do
  it 'is the root page' do
    visit root_path

    expect(current_path).to eq(root_path)
    expect(page).to have_link('Merchants')
  end
end
