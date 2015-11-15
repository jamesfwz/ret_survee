FactoryGirl.define do
  factory :device do
    udid  SecureRandom.uuid 
  end
end
