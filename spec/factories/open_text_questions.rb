FactoryGirl.define do
  factory :open_text_question, parent: :question, class: OpenTextQuestion do 
    trait :with_2_answers do 
      after(:create) do |question|
        create_list(:open_text_answer, 2, question: question)
      end
    end
  end
end