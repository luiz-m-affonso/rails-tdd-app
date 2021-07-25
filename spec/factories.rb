FactoryBot.define do
  factory :product do
    description { "MyString" }
    price { "9.99" }
    category { nil }
  end

  factory :category do
    description { "Sports" }
  end
end
