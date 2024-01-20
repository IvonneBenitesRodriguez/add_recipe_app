# spec/factories/foods.rb

FactoryBot.define do
  factory :food do
    name { 'Potato' }
    price { 2.5 } # Set a default price or adjust as needed
    user
  end
end
