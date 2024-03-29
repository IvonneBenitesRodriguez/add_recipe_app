require 'rails_helper'

RSpec.describe 'Food index', type: :feature do
  before :each do
    User.create(email: 'tom@gmail.com', password: '123456')

    visit new_user_session_path
    fill_in 'Email', with: 'tom@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    visit foods_path
  end

  describe 'index page for list foods' do
    it 'I can see the name of food of all other users.' do
      expect(page).to have_content('')
    end

    it 'I can see the measurement unit there' do
      expect(page).to have_content('')
    end

    it 'I can see the price there' do
      expect(page).to have_content('')
    end

    it 'I can see the button add food' do
      expect(page).to have_content('Add food')
    end
  end
end
