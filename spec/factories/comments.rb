FactoryBot.define do
  factory :comment do
    author { "MyString" }
    body { "MyString" }
    recipe_id { "MyString" }
    recipes { nil }
  end
end
