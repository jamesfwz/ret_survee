FactoryGirl.define do
  factory :choice do
    sequence(:title)   { |n| "Choice #{n}"}  
  end
end
