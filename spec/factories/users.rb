# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "user@test.no"
    name "MyString"
    nick_name "MyString"
    description "MyText"
    birthday "2013-02-08"
  end
end
