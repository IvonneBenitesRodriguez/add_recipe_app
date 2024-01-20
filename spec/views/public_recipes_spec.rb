require 'rails_helper'

RSpec.describe 'Recipe index', type: :feature do
  before :each do
    visit public_recipes_path
  end

  it 'Displays the name of the Recipe' do
    expect(page).to have_content('')
  end

  it 'Displays the author of the recipe' do
    expect(page).to have_content('')
  end

  it 'Displays the total items' do
    expect(page).to have_content('')
  end

  it 'Displays the total price' do
    expect(page).to have_content('')
  end
end
