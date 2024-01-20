# spec/factories/users.rb

FactoryBot.define do
  factory :user do
    email { 'tom@gmail.com' }
    password { '123456' }
    # Add any other attributes as needed
  end
end
