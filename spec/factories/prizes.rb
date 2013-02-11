# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :prize do
    name "MyString"
    description "MyText"
    lottery nil
  end
end
