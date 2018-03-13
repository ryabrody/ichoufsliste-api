FactoryGirl.define do
  factory :ingredient do
    name { Faker::Food.ingredient }
    bought false
    created_by { Faker::Number.number(10) }
    department { FactoryGirl.build(:department) }
  end
end
