FactoryGirl.define do
  factory :open_text_answer do
    message 'This is a great answer.'
    association :question, factory: :open_text_question   
  end
end
