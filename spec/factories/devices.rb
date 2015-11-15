FactoryGirl.define do
  factory :device do
    sequence(:udid)   { |n| "#{SecureRandom.uuid}#{n}"}
  end
end
