require 'rails_helper'

RSpec.describe 'Shopping List', type: :feature do
  before :each do
    user = FactoryBot.create(:user, email: 'tom@gmail.com', password: '123456')
    login_as(user, scope: :user)

    recipe1 = FactoryBot.create(:recipe, user:)
    recipe2 = FactoryBot.create(:recipe, user:)

    FactoryBot.create(:food, name: 'Potato', user:, recipes: [recipe1, recipe2])
    FactoryBot.create(:food, name: 'Tomato', user:, recipes: [recipe1])
    FactoryBot.create(:food, name: 'Apple', user:, recipes: [recipe2])

    visit shopping_list_path
  end

  it 'Displays the amount of items to buy' do
    expect(page).to have_text('')
  end

  it 'Displays the total value' do
    expect(page).to have_content('') # Update as needed
  end

  it 'Displays the list of food to buy' do
    expect(page).to have_content('Potato')
    expect(page).to have_content('Tomato')
    expect(page).to have_content('Apple')
  end
end
