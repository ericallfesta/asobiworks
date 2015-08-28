# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    zipcode "MyString"
    city "MyString"
    street "MyString"
    tel "MyString"
    user_id 1
  end
end
