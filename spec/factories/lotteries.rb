# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lottery do
    title "MyString"
    description "MyText"
    due_at "2013-02-11"
  end
end
