class OpenTextQuestion < Question
  has_many :answers, class_name: OpenTextAnswer, foreign_key: :question_id
end