require 'rails_helper'

RSpec.describe 'New Arist' do
  describe 'as a visitor' do
    describe 'when i visit the new artist form by clicking a link on the index' do
      it 'creates a new artist' do
        visit '/artists'

        expect(page).to_not have_content('Taylor')

        click_link 'New Artist'
        expect(current_path).to eq('/artists/new')

        fill_in 'Name', with: 'Taylor'
        click_on 'Create Artist'

        expect(current_path).to eq('/artists')
        expect(page).to have_content('Taylor')
      end
    end
  end  

end