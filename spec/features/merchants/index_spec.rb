require 'rails_helper'

RSpec.describe 'The Merchant Index' do
  it 'is a list of all merchants' do
    visit merchants_path

    expect(current_path).to eq(merchants_path)
  end
end
