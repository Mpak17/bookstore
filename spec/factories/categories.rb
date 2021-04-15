FactoryBot.define do
  factory :category do
    title { "MyCategory_#{rand(3)}" }
  end
end
