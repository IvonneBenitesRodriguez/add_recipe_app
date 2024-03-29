require 'rails_helper'

RSpec.describe 'Recipe show', type: :feature do
  before :each do
    user = FactoryBot.create(:user, email: 'tom@gmail.com', password: '123456')
    FactoryBot.create(:recipe, id: 1, user:)
    login_as(user, scope: :user)
    visit recipe_path(1)
  end

  it 'Displays the name of the Recipe' do
    expect(page).to have_content('Recipe 1')
  end

  it 'Displays the preparation time' do
    expect(page).to have_content('Preparation Time: 1h')
  end

  it 'Displays the cooking time' do
    expect(page).to have_content('Cooking Time: 1h')
  end

  it 'Displays the description' do
    expect(page).to have_content('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do')
  end

  it 'Displays the ingredients' do
    Recipe.find_by_id(1).foods.each { |f| expect(page).to have_content(f.name) }
  end
end
