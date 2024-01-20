require 'rails_helper'

RSpec.describe 'Recipe index', type: :feature do
  before :each do
    # Create a user
    user = User.create(email: 'tom@gmail.com', password: '123456')

    # Sign in the user using Devise's helper
    sign_in user

    visit recipes_path
  end

  it 'Displays the name of the Recipe' do
    expect(page).to have_content('')
  end

  it 'Displays a part of the description' do
    expect(page).to have_content('')
  end
end
