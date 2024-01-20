FactoryBot.define do
  factory :recipe do
    name { 'Recipe 1' }
    preparation_time { '1h' }
    cooking_time { '1h' }
    description { 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do' }
  end
end
