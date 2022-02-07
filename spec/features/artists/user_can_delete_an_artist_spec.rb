require 'rails_helper'

RSpec.describe 'As a visitor' do
  it 'can delete an artist' do
    imagine = Artist.create(name: 'imagine dragons')

    visit '/artists'

    expect(page).to have_content('imagine dragons')

    click_button 'Delete'

    expect(current_path).to eq('/artists')
    expect(page).to_not have_content('imagine dragons')
    expect(page).to_not have_button('Delete')
  end
end