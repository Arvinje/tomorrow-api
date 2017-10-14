FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    api_key { SecureRandom.hex }
    app_version "1.0"
    os_version "Android/4.3"
    visits_count 0
  end
end
