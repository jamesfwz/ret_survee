class MultiChoiceQuestion < Question
  has_many :answers, class_name: MultiChoiceAnswer, foreign_key: :question_id
  has_many :choices, foreign_key: :question_id
end