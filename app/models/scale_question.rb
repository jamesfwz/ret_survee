class ScaleQuestion < Question
  has_many :answers, class_name: ScaleAnswer, foreign_key: :question_id
end