FactoryGirl.define do
  factory :choice do
    sequence(:title)   { |n| "Choice #{n}"}  
    association :question, factory: :multi_choice_question  
  end
end
