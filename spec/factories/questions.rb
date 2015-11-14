FactoryGirl.define do
  factory :question do
    sequence(:title)   { |n| "Question #{n}"}
    content 'This is a great question.'
  end
end
