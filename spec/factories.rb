FactoryGirl.define do
  factory :user do
    name     "Ronald Zhang"
    email    "rzhang@onecareco.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
