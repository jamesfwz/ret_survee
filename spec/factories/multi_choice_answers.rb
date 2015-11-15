FactoryGirl.define do
  factory :multi_choice_answer do
    choice
    association :question, factory: :multi_choice_question   
  end
end
