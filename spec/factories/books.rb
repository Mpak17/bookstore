FactoryBot.define do
  sequence :category_id do |n|
    rand(n)
  end

  factory :book do
    title { Faker::Book.title }
    price { rand(100).to_f }
    association :category
  end
end
