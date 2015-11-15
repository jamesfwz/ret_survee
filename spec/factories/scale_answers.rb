FactoryGirl.define do
  factory :scale_answer do
    value       60
    association :question, factory: :scale_question   
  end
end
